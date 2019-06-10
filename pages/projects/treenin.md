---
permalink: /projects/ml4jets.html
layout: project
title: Machine Learning for jets
shortname: ml4jets
pagetype: project
image: logos/ml4jets-logo.png
blurb: Machine learning for jets
focus-area: ia
team:
 - cranmer
 - SebastianMacaluso
 - irinaespejo
---

<!-- <img src="/assets/logos/ml4jets-logo.png" width="50%" /> -->

Machine Learning is having a major impact in jet physics. It is empowering powerful taggers for boosted (W, Z, H, top) jets as well as flavor tagging. 
NYU will host [ML4Jets 2020](https://indico.cern.ch/event/809820/) focusing on this topic. This will be the third in the series of workshops, following [ML4Jets 2018](https://indico.cern.ch/event/745718/) at FermiLab and [ML4Jets 2017](https://indico.physics.lbl.gov/indico/event/546/) at Berkeley. 

At [ML4Jets 2018](https://indico.cern.ch/event/745718/) a top-tagging comparison was initaited, resulting in [``The Machine Learning Landscape of Top Taggers''](http://inspirehep.net/record/1722059). The table below shows a comparison of the methods.

<img src="/assets/images/top-tagging.png" width="50%" alt="top tagging table" />

The QCD-aware recursive neural networks devleoped as part of DIANA/HEP ([Louppe et al. 2017](https://arxiv.org/abs/1702.00748)) which leverage an analogy to natural language processing were extended to include a network-in-network. The TreeNiN method (in the table above), achieves excellent performance with orders of magnitude fewer parameters than the other top performing techniques. This pytorch implementation can be found in [this repository](https://github.com/diana-hep/TreeNiN) 

Irina Espejo, Sebastian Macaluso, and Heiko Mueller are using docker containers, yadage workflows, and [REANA](http://www.reana.io) to automate and streamline such benchmark studies. 


[![GitHub](https://img.shields.io/badge/GitHub-555555.svg)](https://github.com/diana-hep/TreeNiN). 
[![DOI](https://zenodo.org/badge/160135404.svg)](https://zenodo.org/badge/latestdoi/160135404) 


{% include list_project_team.md team=page.team%}

{% include list_project_presentations.md shortname=page.shortname %}

{% include list_project_publications.md shortname=page.shortname %}
