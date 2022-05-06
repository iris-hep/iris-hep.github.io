---
permalink: /projects/coffea-casa.html
layout: project
title: Coffea-Casa
shortname: coffea-casa
pagetype: project
image: logos/coffea-casa.png
logowidth: 15%
blurb: A Prototype of Analysis Facility
maturity: Testing
maturity-note:
focus-area:
 - doma
 - as
team:
 - oshadura
 - kenbloom
 - kaimi2007
 - clundst
 - jthiltges
 - bbockelm
 - Garhan Attebury
 - Matous Adamec
---



### About Coffea-Casa Analysis Facility project

`Coffea-Casa` is a prototype of analysis facility, which provides services for “low latency columnar analysis”, enabling rapid processing of data in a column-wise fashion. These services, based on Dask and Jupyter notebooks, aim to dramatically lower time for analysis and provide an easily-scalable and user-friendly computational environment that will simplify, facilitate, and accelerate the delivery of HEP results. The facility is built on top of a Kubernetes cluster and integrates dedicated resources with resources allocated via fairshare through the local HTCondor system. In addition to the user-facing interfaces such as Dask, the facility also manages access control through single-sign-on and authentication & authorization for data access.

After authentication via the CERN SSO, the user is presented with a Jupyter notebook interface that can be populated with code from a Git repository specified by the user.  When the notebook is executed, the processing automatically scales out to available resources for example the Nebraska Tier-2 facility, giving the user transparent interactive access to a large computing resource.  The facility has access to the entire CMS data set, thanks to the global data federation and local caches.  It supports the Coffea framework, which provides a declarative programming interface that treats the data in its natural columnar form.  An important feature is access to a “column service”; if a user is working with a compact data format (such as a CMS NanoAOD, ATLAS PHYSLITE) that is missing a data element that the user needs, the facility can be used to serve that “column” from a remote site.  This allows only the compact data formats to be stored locally and augmented only as needed, a critical strategy for CMS and ATLAS to control the costs of storage in the HL-LHC era.

![Generic design schema of Coffea-Casa analysis facility](/assets/images/coffea-casa-1.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}


Core software components and other developed plugins that were used in the design of Coffea-Casa analysis facility:

![Core components used in design of Coffea-Casa analysis facility](/assets/images/coffea-casa-2.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}



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
- Deployed at University Nebraska-Lincoln Tier2, `coffea-casa` CMS facility is accommodating the first CMS users: [try it!](https://coffea.casa/). Currently more then 140 users had been used the CMS facility over last year.

![CMS Coffea-Casa Jupyterlab interface with Dask Labextention powered cluster](/assets/images/coffea-casa-3.png){:style="display:block; margin-left: auto; margin-right: auto; width: 50%"}

- For non-CMS users, we enabled the Opendata `coffea-casa` facility: [try it!](https://coffea-opendata.casa/). Currently more then 60 users had been used the Opendata facility over last year.

![Opendata Coffea-Casa login web-page enabling a user access to Jupyterlab interface with Dask Labextention powered cluster](/assets/images/coffea-casa-4.png){:style="display:block; margin-left: auto; margin-right: auto; width: 50%"}

- For ATLAS physicists, there was deployed ATLAS Coffea-Casa analysis facility instance at the University of Chicago.

- Coffea-casa analysis facility is a key component for [IRIS-HEP Analysis Grand Challenge](https://iris-hep.org/projects/agc.html) preparations.

- Both Opendata `coffea-casa` analysis facility at University Nebraska-Lincoln and ATLAS analysis facility instance at the University of Chicago were used for showcasing various Python analysis packages and services on [Analysis Grand Challenge Tools workshop 2021](https://indico.cern.ch/event/1076231/) and [Analysis Grand Challenge Tools workshop 2022](https://indico.cern.ch/event/1126109/) workshops.


**Future plans for 2022**:
- Test Helm charts and other by-products on the other facilities.
- Involve more physics analysis groups to use facility.
- Benchmark various software components and packages deployed at Coffea-Casa analysis facility at University Nebraska-Lincoln.
- Prepare and execute Analysis Grand Challenge at Coffea-Casa Analysis Facility deployed at University Nebraska-Lincoln and University of Chicago.


### Recent videos and tutorials

*  The Coffea-Casa analysis facility demo "Scale-out with coffea: coffea-casa" - Youtube video at [Analysis Grand Challenge Tools workshop 2021](https://youtu.be/7s30NNsAG7w)
* The Coffea-Casa analysis facility introduction - Youtube video at [PyHEP 2020](https://www.youtube.com/watch?v=CDIFd1gDbSc)
* The Coffea-Casa tutorial "Coffea columnar analysis at scale" -  Youtube vide at [PyHEP 2020](https://www.youtube.com/watch?v=oPl0t8J36-Q)


### Fellows

* [Zora Che](/pages/fellows/zche.html)
