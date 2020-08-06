---
permalink: /projects/pyhf.html
layout: project
title: pyhf
shortname: pyhf
pagetype: project
image: logos/pyhf-logo.png
logowidth: 50%
blurb: Differentiable likelihoods
focus-area: as
team:
 - cranmer
 - Lukas Heinrich
 - matthewfeickert
 - Giordon Stark
---


`pyhf` is a pure-python implementation of the widely-used HistFactory p.d.f. template described in [[CERN-OPEN-2012-016](https://cds.cern.ch/record/1456844)]. It also includes interval estimation is based on the asymptotic formulas of "Asymptotic formulae for likelihood-based tests of new physics" [[arxiv:1007.1727](https://arxiv.org/abs/1007.1727)]. The aim is also to support modern computational graph libraries such as PyTorch and TensorFlow in order to make use of features such as autodifferentiation and GPU acceleration.

[![GitHub Project](https://img.shields.io/badge/GitHub--blue?style=social&logo=GitHub)](https://github.com/scikit-hep/pyhf/)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1169739.svg)](https://doi.org/10.5281/zenodo.1169739)
[![Scikit-HEP](https://scikit-hep.org/assets/images/Scikit--HEP-Project-blue.svg)](https://scikit-hep.org/)

[![GitHub Actions Status: CI](https://github.com/scikit-hep/pyhf/workflows/CI/CD/badge.svg)](https://github.com/scikit-hep/pyhf/actions?query=workflow%3ACI%2FCD+branch%3Amaster)
[![GitHub Actions Status: Publish](https://github.com/scikit-hep/pyhf/workflows/publish%20distributions/badge.svg)](https://github.com/scikit-hep/pyhf/actions?query=workflow%3A%22publish+distributions%22+branch%3Amaster)
[![Docker Automated](https://img.shields.io/docker/automated/pyhf/pyhf.svg)](https://hub.docker.com/r/pyhf/pyhf/)
[![Code Coverage](https://codecov.io/gh/scikit-hep/pyhf/graph/badge.svg?branch=master)](https://codecov.io/gh/scikit-hep/pyhf?branch=master)
[![Language grade: Python](https://img.shields.io/lgtm/grade/python/g/scikit-hep/pyhf.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/scikit-hep/pyhf/latest/files/)
[![CodeFactor](https://www.codefactor.io/repository/github/scikit-hep/pyhf/badge)](https://www.codefactor.io/repository/github/scikit-hep/pyhf)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)

[![Docs](https://img.shields.io/badge/docs-master-blue.svg)](https://scikit-hep.github.io/pyhf)
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/scikit-hep/pyhf/master?filepath=docs%2Fexamples%2Fnotebooks%2Fbinderexample%2FStatisticalAnalysis.ipynb)

[![PyPI version](https://badge.fury.io/py/pyhf.svg)](https://badge.fury.io/py/pyhf)
[![Conda Version](https://img.shields.io/conda/vn/conda-forge/pyhf.svg)](https://anaconda.org/conda-forge/pyhf)
[![Supported Python versionss](https://img.shields.io/pypi/pyversions/pyhf.svg)](https://pypi.org/project/pyhf/)
[![Docker Stars](https://img.shields.io/docker/stars/pyhf/pyhf.svg)](https://hub.docker.com/r/pyhf/pyhf/)
[![Docker Pulls](https://img.shields.io/docker/pulls/pyhf/pyhf.svg)](https://hub.docker.com/r/pyhf/pyhf/)

### Recent Talks and Tutorials

* Matthew Feickert's [SciPy 2020 talk](https://matthewfeickert.github.io/talk-SciPy-2020/index.html):

<!-- http://www.get-youtube-thumbnail.com/ -->
[![SciPy 2020 talk YouTube](http://i3.ytimg.com/vi/FrH9s3eB6fU/maxresdefault.jpg)](https://youtu.be/FrH9s3eB6fU)

* [PyHEP 2020 tutorial](https://matthewfeickert.github.io/talk-SciPy-2020/index.html) (uses `pyhf` `v0.4.4`):

<!-- http://www.get-youtube-thumbnail.com/ -->
[![PyHEP 2020 tutorial YouTube](http://i3.ytimg.com/vi/V0Li05ijv0U/hqdefault.jpg)](https://youtu.be/V0Li05ijv0U)

### Use in Publications

Updating list of citations and use cases of `pyhf`:

- Waleed Abdallah and others. Reinterpretation of LHC Results for New Physics: Status and Recommendations after Run 2. 2020. [arXiv:2003.07868](https://arxiv.org/abs/2003.07868).
- G. Brooijmans and others. Les Houches 2019 Physics at TeV Colliders: New Physics Working Group Report. In 2020. [arXiv:2002.12220](https://arxiv.org/abs/2002.12220).
- J. Alison and others. Higgs boson potential at colliders: status and perspectives. In 2019. [arXiv:1910.00012](https://arxiv.org/abs/1910.00012).
- ATLAS Collaboration. Reproducing searches for new physics with the ATLAS experiment through publication of full statistical likelihoods. Geneva, Aug 2019. URL: [https://cds.cern.ch/record/2684863](https://cds.cern.ch/record/2684863).
- Johann Brehmer, Felix Kling, Irina Espejo, and Kyle Cranmer. MadMiner: Machine learning-based inference for particle physics. Comput. Softw. Big Sci., 4(1):3, 2020. [arXiv:1907.10621](https://arxiv.org/abs/1907.10621), [doi:10.1007/s41781-020-0035-2](https://doi.org/10.1007/s41781-020-0035-2).
- Lukas Heinrich, Holger Schulz, Jessica Turner, and Ye-Ling Zhou. Constraining A₄ Leptonic Flavour Model Parameters at Colliders and Beyond. 2018. [arXiv:1810.05648](https://arxiv.org/abs/1810.05648).

### Published Likelihoods

Updating list of HEPData entries for publications using `HistFactory` JSON likelihoods:

- Search for direct production of electroweakinos in final states with one lepton, missing transverse momentum and a Higgs boson decaying into two b-jets in (pp) collisions at s√=13 TeV with the ATLAS detector. 2020. [doi:10.17182/hepdata.90607.v2](https://doi.org/10.17182/hepdata.90607.v2).
- Search for chargino-neutralino production with mass splittings near the electroweak scale in three-lepton final states in s√ = 13 TeV pp collisions with the ATLAS detector. 2019. [doi:10.17182/hepdata.91127](https://doi.org/10.17182/hepdata.91127).
- Search for direct stau production in events with two hadronic τ-leptons in s√=13 TeV pp collisions with the ATLAS detector. 2019. [doi:10.17182/hepdata.92006](https://doi.org/10.17182/hepdata.92006).
- Search for bottom-squark pair production with the ATLAS detector in final states containing Higgs bosons, b-jets and missing transverse momentum. 2019. [doi:10.17182/hepdata.89408](https://doi.org/10.17182/hepdata.89408).
