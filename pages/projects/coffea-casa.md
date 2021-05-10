---
permalink: /projects/coffea-casa.html
layout: project
title: coffea-casa
shortname: coffea-casa
pagetype: project
image: logos/coffea-casa.png
logowidth: 70%
blurb: A Prototype of Analysis Facility
focus-area:
 - doma
 - as
team:
 - oshadura
 - kenbloom
 - Garhan Attebury
 - John Thiltges
 - bbockelm
 - Matous Adamec
---



### About coffea-casa project

`coffea-casa` is a prototype of analysis facility, which provides services for “low latency columnar analysis”, enabling rapid processing of data in a column-wise fashion. These services, based on Dask and Jupyter notebooks, aim to dramatically lower time for analysis and provide an easily-scalable and user-friendly computational environment that will simplify, facilitate, and accelerate the delivery of HEP results. The facility is built on top of a Kubernetes cluster and integrates dedicated resources with resources allocated via fairshare through the local HTCondor system. In addition to the user-facing interfaces such as Dask, the facility also manages access control through single-sign-on and authentication & authorization for data access.

![Generic design schema of coffea-casa analysis facility](/assets/images/coffea-casa-0.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}



### Coffea-casa repositories and related resources

[![GitHub Project](https://img.shields.io/badge/GitHub--blue?style=social&logo=GitHub)](https://github.com/CoffeaTeam/coffea-casa/)
![GitHub issues](https://img.shields.io/github/issues/coffeateam/coffea-casa)
![GitHub pull requests](https://img.shields.io/github/issues-pr/coffeateam/coffea-casa)
[![Actions Status][actions-badge]][actions-link]
[![PyPI version][pypi-version]][pypi-link]
[![PyPI platforms][pypi-platforms]][pypi-link]

Documentation:
[![Documentation Status][rtd-badge]][rtd-link]

Contact us:
[![GitHub Discussion][github-discussions-badge]][github-discussions-link]

[actions-badge]:            https://github.com/CoffeaTeam/coffea-casa/workflows/CI/CD/badge.svg
[actions-link]:             https://github.com/CoffeaTeam/coffea-casa/actions
[github-discussions-badge]: https://img.shields.io/static/v1?label=Discussions&message=Ask&color=blue&logo=github
[github-discussions-link]:  https://github.com/CoffeaTeam/coffea-casa/discussions
[pypi-link]:                https://pypi.org/project/coffea-casa/
[pypi-platforms]:           https://img.shields.io/pypi/pyversions/coffea-casa
[pypi-version]:             https://badge.fury.io/py/coffea-casa.svg
[rtd-badge]:                https://readthedocs.org/projects/coffea-casa/badge/?version=latest
[rtd-link]:                 https://coffea-casa.readthedocs.io/en/latest/?badge=latest

Docker containers:
[![Docker Pulls for coffea-casa](https://img.shields.io/docker/pulls/coffeateam/coffea-casa.svg)](https://hub.docker.com/r/coffeateam/coffea-casa)
[![Docker Pulls for coffea-casa (worker image)](https://img.shields.io/docker/pulls/coffeateam/coffea-casa-analysis.svg)](https://hub.docker.com/r/coffeateam/coffea-casa-analysis)

More information could be found in the corresponding repository:
 * [github.com/CoffeaTeam/coffea-casa](https://github.com/CoffeaTeam/coffea-casa)



### Recent accomplishments and plans

**Recent accomplishments**:
- Deployed at University Nebraska-Lincoln Tier3, `coffea-casa` facility is ready to accomodate the first CMS users: [try it!](https://cmsaf-jh.unl.edu/)

![Coffea-casa Jupyterlab interface with Dask Labextention powered cluster](/assets/images/coffea-casa-1.png){:style="display:block; margin-left: auto; margin-right: auto; width: 50%"}


**Future plans for 2021**:
- Release Helm charts and other by-products to be deployable on the other facilities
- Deploy coffea-casa functionality at least on one external facility
- Involve more physics analysis groups to use facility.



### Recent videos and tutorials

* The coffea-casa introductory Youtube video at [PyHEP 2020](https://www.youtube.com/watch?v=CDIFd1gDbSc)
* The coffea-casa Youtube video tutorial at [PyHEP 2020](https://www.youtube.com/watch?v=oPl0t8J36-Q)


### Fellows

* [Zora Che](/pages/fellows/zche.html)
