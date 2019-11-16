#!/usr/bin/env python3

import requests
import json
import typing
import argparse
import warnings

from pathlib import Path

import yaml
try:
    from yaml import CLoader as Loader, CDumper as Dumper
except ImportError:
    warnings.warn("Loading pure-python, slower YAML parser")
    from yaml import Loader, Dumper


DIR = Path(__file__).parent.resolve()
master_folder = DIR.parent / '_data/people'

authors_gen = (yaml.load(yaml_file.open(), Loader=Loader) for yaml_file in master_folder.glob('*.yml'))
authors = [a['inspire-id'] for a in authors_gen if 'inspire-id' in a]

# Alternate way to write this:
# authors = [yaml.load(yaml_file.open()).get('inspire-id') for yaml_file in master_folder.glob('*.yml')]
# authors = [a for a in authors if a is not None]

# Python 3.8 syntax allows this to be one in one line:
# [(item := yaml.load(yaml_file.open()))['inspire-id'] for yaml_file in master_folder.glob('*.yml') if 'inspire-id' in item]

print(authors)

def summarize_record(recid : int, *, max_authors : int = 5):
    url = 'https://labs.inspirehep.net/api/literature/'+str(recid)
    data = requests.get(url).json()['metadata']

    mini_dict = {
        'recid':   recid,
        'title':   data['titles'][0]['title'],
        'authors':
            "; ".join([a['full_name'] for a in data['authors'][:max_authors]]+['et. al.'])
                if len(data['authors']) > max_authors else
            [a['full_name'] for a in data['authors']]
    }

    mini_dict['inspire-ids'] = [
            item['value']
            for auth in data['authors']
                for item in auth['ids']
                    if item['schema'] == 'INSPIRE BAI'
            ]

    if 'collaborations' in data:
        mini_dict.update({'collaboration': data['collaborations'][0]['value']})

    mini_dict.update({
        'arxiv_eprint':  data['arxiv_eprints'][0]['value'],
        'url':           'https://arxiv.org/abs/'+data['arxiv_eprints'][0]['value'],
        'creation_date': data['legacy_creation_date']})

    if 'publication_info' in data:
        mini_dict.update({
            'journal_title':  data['publication_info'][0]['journal_title'],
            'journal_volume': data['publication_info'][0]['journal_volume'],
            'page_start':     data['publication_info'][0]['page_start'],
            'journal_year':   data['publication_info'][0]['year']})

    if 'dois' in data:
        mini_dict.update({'doi': data['dois'][0]['value']})

    mini_dict.update({
        'focus-area': '<FILL IN>',
        'project': '<FILL IN>',
        })

    return mini_dict


def summarize_records(*recids : typing.List[int]):
    return {'publications': [summarize_record(recid) for recid in recids]}

def print_yaml_records(*recids : typing.List[int]):
    print(yaml.dump(summarize_records(*recids), default_flow_style=False, Dumper=Dumper))

if __name__ == '__main__':
    parser = argparse.ArgumentParser(
            description='Process some integers publications from INSPIRE.')
    parser.add_argument('recid', type=int, nargs='+',
                    help="RECORD ID's to print")

    args = parser.parse_args()
    print_yaml_records(*args.recid)
