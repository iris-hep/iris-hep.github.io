#!/usr/bin/env python3

'''
Prints the structure for an entry

Usage:
./print_structure.py 1740667
'''

import requests

from functools import singledispatch

import yaml
import sys

#recid = 811388
#recid = 1726790
#recid = 1730403
recid = sys.argv[1]

url = 'https://labs.inspirehep.net/api/literature/'+str(recid)
data = requests.get(url).json()['metadata']


@singledispatch
def cleanup(arg):
    return arg

@cleanup.register
def _(arg: str):
    return arg[:70] + ('...' if len(arg) >= 70 else '')

@cleanup.register
def _(arg: dict):
    return {v:cleanup(arg[v]) for v in arg}

@cleanup.register
def _(arg: list):
    return [cleanup(v) for v in arg[:2]]


data = cleanup(data)

print(yaml.dump(data, default_flow_style=False))

