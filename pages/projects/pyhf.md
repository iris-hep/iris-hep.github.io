---
permalink: /projects/pyhf.html
layout: project
title: pyhf
shortname: pyhf
pagetype: project
image: logos/pyhf-logo.png
logowidth: 50%
blurb: Differentiable likelihoods
maturity: Deployed
maturity-note:
github: https://github.com/scikit-hep/pyhf
start-date: 2018-01-19
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
[![JOSS DOI](https://joss.theoj.org/papers/10.21105/joss.02823/status.svg)](https://doi.org/10.21105/joss.02823)
[![Scikit-HEP](https://scikit-hep.org/assets/images/Scikit--HEP-Project-blue.svg)](https://scikit-hep.org/)
[![NSF-1836650](https://img.shields.io/badge/NSF-1836650-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1836650)

[![Docs from latest](https://img.shields.io/badge/docs-latest-blue.svg)](https://pyhf.readthedocs.io/)
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/scikit-hep/pyhf/master?filepath=docs%2Fexamples%2Fnotebooks%2Fbinderexample%2FStatisticalAnalysis.ipynb)

[![PyPI version](https://badge.fury.io/py/pyhf.svg)](https://badge.fury.io/py/pyhf)
[![Conda Version](https://img.shields.io/conda/vn/conda-forge/pyhf.svg)](https://anaconda.org/conda-forge/pyhf)
[![Supported Python versionss](https://img.shields.io/pypi/pyversions/pyhf.svg)](https://pypi.org/project/pyhf/)

[![Code Coverage](https://codecov.io/gh/scikit-hep/pyhf/graph/badge.svg?branch=master)](https://codecov.io/gh/scikit-hep/pyhf?branch=master)
[![CodeFactor](https://www.codefactor.io/repository/github/scikit-hep/pyhf/badge)](https://www.codefactor.io/repository/github/scikit-hep/pyhf)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)

### Coverage in the media

*  **Featured on CERN homepage and in Symmetry Magazine and the CERN Courier**
   - The CERN homepage featured an article on pyhf: [New open release allows theorists to explore LHC data in a new way](https://home.cern/news/news/knowledge-sharing/new-open-release-allows-theorists-explore-lhc-data-new-way):  The ATLAS collaboration releases full analysis likelihoods, a first for an LHC experiment. (January, 2020)
   - Symmetry Magazine: [ATLAS releases 'full orchestra' of analysis instruments](https://www.symmetrymagazine.org/article/atlas-releases-full-orchestra-of-analysis-instruments) (January, 2021)
   - CERN Courier [May/June 2021 Issue](https://cds.cern.ch/record/2765233): [LHC reinterpreters think long-term](https://cerncourier.com/a/lhc-reinterpreters-think-long-term/) (April, 2021)
* **Probability model publishing covered in National Academies of Sciences, Engineering, and Medicine report**
   - National Academies of Sciences, Engineering, and Medicine. 2022. Automated Research Workflows For Accelerated Discovery: Closing the Knowledge Discovery Loop. Washington, DC: The National Academies Press. [doi:10.17226/26532](https://doi.org/10.17226/26532).
      - Chapter 3: Automated Research Workflows in Action
   - News Release "[Automated Research Workflows Are Speeding Pace of Scientific Discovery; New Report Offers Recommendations to Advance Their Development][NASEM-news-release]" (May, 2022)

[NASEM-news-release]: https://www.nationalacademies.org/news/2022/05/automated-research-workflows-are-speeding-pace-of-scientific-discovery-new-report-offers-recommendations-to-advance-their-development

### Recent Talks and Tutorials

* Matthew Feickert's [SciPy 2020 talk](https://matthewfeickert.github.io/talk-SciPy-2020/index.html):

<!-- http://www.get-youtube-thumbnail.com/ -->
[![SciPy 2020 talk YouTube](http://i3.ytimg.com/vi/FrH9s3eB6fU/hqdefault.jpg)](https://youtu.be/FrH9s3eB6fU)

* [`pyhf` tutorial](https://pyhf.github.io/pyhf-tutorial/) (continually updated to use the latest `pyhf` release)
   - Past tutorials (with recordings on YouTube) are listed on the [tutorial GitHub project](https://github.com/pyhf/pyhf-tutorial)

### Citations and Use in Publications

Updating list of citations (from use in analyses and general reference) of `pyhf`:

- ATLAS Collaboration. SimpleAnalysis: Truth-level Analysis Framework. Apr 2022. [https://cds.cern.ch/record/2805991](https://cds.cern.ch/record/2805991).
- Tommaso Dorigo et al. Toward the End-to-End Optimization of Particle Physics Instruments with Differentiable Programming: a White Paper. Mar 2022. [arXiv:2203.13818](https://arxiv.org/abs/2203.13818).
- Alexander Albert et al. Strange quark as a probe for new physics in the Higgs sector. In _2022 Snowmass Summer Study_. Mar 2022. [arXiv:2203.07535](https://arxiv.org/abs/2203.07535).
- Nathan Simpson and Lukas Heinrich. neos: End-to-End-Optimised Summary Statistics for High Energy Physics. Mar 2022. [arXiv:2203.05570](https://arxiv.org/abs/2203.05570).
- Harry Enke et al. Survey of Open Data Concepts Within Fundamental Physics: An Initiative of the PUNCH4NFDI Consortium. _Computing and Software for Big Science_, 6(1):6, Mar 2022. [doi:10.1007/s41781-022-00081-7](https://doi.org/10.1007/s41781-022-00081-7).
- ATLAS Collaboration. Search for neutral long-lived particles in pp collisions at s√=13 TeV that decay into displaced hadronic jets in the ATLAS calorimeter. Mar 2022. [arXiv:2203.01009](https://arxiv.org/abs/2203.01009).
- ATLAS Collaboration. Search for events with a pair of displaced vertices from long-lived neutral particles decaying into hadronic jets in the ATLAS muon spectrometer in pp collisions at s√=13 TeV. Mar 2022. [arXiv:2203.00587](https://arxiv.org/abs/2203.00587).
- Lukas Heinrich and Michael Kagan. Differentiable Matrix Elements with MadJax. Feb 2022. [arXiv:2203.00057](https://arxiv.org/abs/2203.00057).
- Jim Pivarski, Eduardo Rodrigues, Kevin Pedro, Oksana Shadura, Benjamin Krikler, and Graeme A. Stewart. HL-LHC Computing Review Stage 2, Common Software Projects: Data Science Tools for Analysis. Feb 2022. [arXiv:2202.02194](https://arxiv.org/abs/2202.02194).
- Florentin Jaffredo. Revisiting mono-τ tails at the LHC. Dec 2021. [arXiv:2112.14604](https://arxiv.org/abs/2112.14604).
- ATLAS Collaboration. Implementation of simplified likelihoods in HistFactory for searches for supersymmetry. Sep 2021. [https://cds.cern.ch/record/2782654](https://cds.cern.ch/record/2782654).
- Michael J. Baker, Darius A. Faroughy, and Sokratis Trifinopoulos. Collider Signatures of Coannihilating Dark Matter in Light of the B-Physics Anomalies. Sep 2021. [arXiv:2109.08689](https://arxiv.org/abs/2109.08689).
- Kyle Cranmer and others. Publishing statistical models: Getting the most out of particle physics experiments. Sep 2021. [arXiv:2109.04981](https://arxiv.org/abs/2109.04981).
- Kyle Cranmer and Alexander Held. Building and steering binned template fits with cabinetry. _EPJ Web Conf._, 251:03067, 2021. [doi:10.1051/epjconf/202125103067](https://doi.org/10.1051/epjconf/202125103067).
- Jean-Loup Tastet, Oleg Ruchayskiy, and Inar Timiryasov. Reinterpreting the ATLAS bounds on heavy neutral leptons in a realistic neutrino oscillation model. July 2021. [arXiv:2107.12980](https://arxiv.org/abs/2107.12980).
- ATLAS Collaboration. Search for chargino&ndash;neutralino pair production in final states with three leptons and missing transverse momentum in s√=13 TeV pp collisions with the ATLAS detector. June 2021. [arXiv:2106.01676](https://arxiv.org/abs/2106.01676).
- Belle II Collaboration. Search for B⁺→ K⁺νν̅  decays using an inclusive tagging method at Belle II. Contribution to the 2021 EW session of the 55th Rencontres de Moriond. May 2021. [arXiv:2105.05754](https://arxiv.org/abs/2105.05754).
- Belle II Collaboration. Search for B⁺→ K⁺νν̅  decays using an inclusive tagging method at Belle II. Apr 2021. [arXiv:2104.12624](https://arxiv.org/abs/2104.12624).
- Andrei Angelescu, Damir Bečirević, Darius A. Faroughy, Florentin Jaffredo, and Olcyr Sumensari. On the single leptoquark solutions to the _B_-physics anomalies. Mar 2021. [arXiv:2103.12504](https://arxiv.org/abs/2103.12504).
- Matthew Feickert, Lukas Heinrich, Giordon Stark, and Ben Galewsky. Distributed statistical inference with pyhf enabled through funcX. _EPJ Web Conf._, 251:02070, 2021. [arXiv:2103.02182](https://arxiv.org/abs/2103.02182), [doi:10.1051/epjconf/202125102070](https://doi.org/10.1051/epjconf/202125102070).
- Rodolfo Capdevilla, Federico Meloni, Rosa Simoniello, and Jose Zurita. Hunting wino and higgsino dark matter at the muon collider with disappearing tracks. Feb 2021. [arXiv:2102.11292](https://arxiv.org/abs/2102.11292).
- Vincenzo Cirigliano, Kaori Fuyuto, Christopher Lee, Emanuele Mereghetti, and Bin Yan. Charged Lepton Flavor Violation at the EIC. Feb 2021. [arXiv:2102.06176](https://arxiv.org/abs/2102.06176).
- Jack Y. Araz and others. Proceedings of the second MadAnalysis 5 workshop on LHC recasting in Korea. _Mod. Phys. Lett. A_, 36(01):2102001, 2021. [arXiv:2101.02245](https://arxiv.org/abs/2101.02245), [doi:10.1142/S0217732321020016](https://doi.org/10.1142/S0217732321020016).
- Simone Amoroso, Deepak Kar, and Matthias Schott. How to discover QCD Instantons at the LHC. Eur. Phys. J. C, 81(7):624, Dec 2020. [arXiv:2012.09120](https://arxiv.org/abs/2012.09120), [doi:10.1140/epjc/s10052-021-09412-1](https://doi.org/10.1140/epjc/s10052-021-09412-1).
- Wolfgang Waltenberger, André Lessa, and Sabine Kraml. Artificial Proto-Modelling: Building Precursors of a Next Standard Model from Simplified Model Results. Dec 2020. [arXiv:2012.12246](https://arxiv.org/abs/2012.12246), [doi: 10.1007/JHEP03(2021)207](https://doi.org/10.1007/JHEP03(2021)207).
- Gaël Alguero, Jan Heisig, Charanjit K. Khosa, Sabine Kraml, Suchita Kulkarni, Andre Lessa, Philipp Neuhuber, Humberto Reyes-González, Wolfgang Waltenberger, and Alicia Wongel. New developments in SModelS. In _Tools for High Energy Physics and Cosmology_. Dec 2020. [arXiv:2012.08192](https://arxiv.org/abs/2012.08192).
- Matthew Feickert, Lukas Heinrich, and Giordon Stark. Likelihood preservation and statistical reproduction of searches for new physics. EPJ Web Conf., Nov 2020. [doi:10.1051/epjconf/202024506017](https://doi.org/10.1051/epjconf/202024506017).
- Gaël Alguero, Sabine Kraml, and Wolfgang Waltenberger. A SModelS interface for pyhf likelihoods. Sep 2020. [arXiv:2009.01809](https://arxiv.org/abs/2009.01809).
- ATLAS Collaboration. Search for new phenomena in events with two opposite-charge leptons, jets and missing transverse momentum in pp collisions at s√=13 TeV with the ATLAS detector. Geneva, Aug 2020. [https://cds.cern.ch/record/2684863](https://cds.cern.ch/record/2728056).
- Jeffrey Krupa and others. GPU coprocessors as a service for deep learning inference in high energy physics. July 2020. [arXiv:2007.10359](https://arxiv.org/abs/2007.10359).
- Charanjit K. Khosa, Sabine Kraml, Andre Lessa, Philipp Neuhuber, and Wolfgang Waltenberger. SModelS database update v1.2.3. LHEP, 158:2020, May 2020. [arXiv:2005.00555](https://arxiv.org/abs/2005.00555), [doi:10.31526/lhep.2020.158](https://doi.org/10.31526/lhep.2020.158).
- Waleed Abdallah and others. Reinterpretation of LHC Results for New Physics: Status and Recommendations after Run 2. 2020. [arXiv:2003.07868](https://arxiv.org/abs/2003.07868).
- G. Brooijmans and others. Les Houches 2019 Physics at TeV Colliders: New Physics Working Group Report. In 2020. [arXiv:2002.12220](https://arxiv.org/abs/2002.12220).
- Andrei Angelescu, Darius A. Faroughy, and Olcyr Sumensari. Lepton Flavor Violation and Dilepton Tails at the LHC. Eur. Phys. J. C, 80(7):641, 2020. [arXiv:2002.05684](https://arxiv.org/abs/2002.05684), [doi:10.1140/epjc/s10052-020-8210-5](https://doi.org/10.1140/epjc/s10052-020-8210-5).
- B.C. Allanach, Tyler Corbett, and Maeve Madigan. Sensitivity of Future Hadron Colliders to Leptoquark Pair Production in the Di-Muon Di-Jets Channel. Eur. Phys. J. C, 80(2):170, 2020. [arXiv:1911.04455](https://arxiv.org/abs/1911.04455), [doi:10.1140/epjc/s10052-020-7722-3](https://doi.org/10.1140/epjc/s10052-020-7722-3).
- J. Alison and others. Higgs boson potential at colliders: status and perspectives. In 2019. [arXiv:1910.00012](https://arxiv.org/abs/1910.00012).
- ATLAS Collaboration. Reproducing searches for new physics with the ATLAS experiment through publication of full statistical likelihoods. Geneva, Aug 2019. [https://cds.cern.ch/record/2684863](https://cds.cern.ch/record/2684863).
- Johann Brehmer, Felix Kling, Irina Espejo, and Kyle Cranmer. MadMiner: Machine learning-based inference for particle physics. Comput. Softw. Big Sci., 4(1):3, 2020. [arXiv:1907.10621](https://arxiv.org/abs/1907.10621), [doi:10.1007/s41781-020-0035-2](https://doi.org/10.1007/s41781-020-0035-2).
- Lukas Heinrich, Holger Schulz, Jessica Turner, and Ye-Ling Zhou. Constraining A₄ Leptonic Flavour Model Parameters at Colliders and Beyond. 2018. [arXiv:1810.05648](https://arxiv.org/abs/1810.05648).

### Published Probability Models

Updating list of HEPData entries for publications using `HistFactory` JSON statistical models:

- Search for charginos and neutralinos in final states with two boosted hadronically decaying bosons and missing transverse momentum in pp collisions at s√=13 TeV with the ATLAS detector. 2021. [doi:10.17182/hepdata.104458](https://doi.org/10.17182/hepdata.104458)
- Measurement of the tt̅tt̅ production cross section in pp collisions at s√=13 TeV with the ATLAS detector. 2021. [doi:10.17182/hepdata.105039](https://doi.org/10.17182/hepdata.105039)
- Search for R-parity violating supersymmetry in a final state containing leptons and many jets with the ATLAS experiment using s√=13 TeV proton-proton collision data. 2021. [doi:10.17182/hepdata.104860](https://doi.org/10.17182/hepdata.104860)
- Search for chargino--neutralino pair production in final states with three leptons and missing transverse momentum in s√=13 TeV pp collisions with the ATLAS detector. 2021. [doi:10.17182/hepdata.95751](https://doi.org/10.17182/hepdata.95751)
- Measurements of the inclusive and differential production cross sections of a top-quark-antiquark pair in association with a Z boson at s√=13 TeV with the ATLAS detector. 2021. [doi:10.17182/hepdata.100351](https://doi.org/10.17182/hepdata.100351)
- Search for pair production of third-generation scalar leptoquarks decaying into a top quark and a τ-lepton in pp collisions at s√=13 TeV with the ATLAS detector. 2021. [doi:10.17182/hepdata.100174](https://doi.org/10.17182/hepdata.100174).
- Search for squarks and gluinos in final states with one isolated lepton, jets, and missing transverse momentum at s√=13 TeV with the ATLAS detector. 2021. [doi:10.17182/hepdata.97041](https://doi.org/10.17182/hepdata.97041)
- Search for trilepton resonances from chargino and neutralino pair production in s√=13 TeV pp collisions with the ATLAS detector. 2020. [doi:10.17182/hepdata.99806](https://doi.org/10.17182/hepdata.99806).
- Search for displaced leptons in s√=13 TeV pp collisions with the ATLAS detector. 2020. [doi:10.17182/hepdata.98796](https://doi.org/10.17182/hepdata.98796).
- Search for squarks and gluinos in final states with jets and missing transverse momentum using 139 fb−1 of s√=13 TeV pp collision data with the ATLAS detector. 2020. [doi:10.17182/hepdata.95664](https://doi.org/10.17182/hepdata.95664).
- Measurement of the tt̅ production cross-section in the lepton+jets channel at s√=13 TeV with the ATLAS experiment. 2020. [doi:10.17182/hepdata.95748](https://doi.org/10.17182/hepdata.95748).
- Search for long-lived, massive particles in events with a displaced vertex and a muon with large impact parameter in pp collisions at s√=13 TeV with the ATLAS detector. 2020. [doi:10.17182/hepdata.91760](https://doi.org/10.17182/hepdata.91760)
- Search for chargino-neutralino production with mass splittings near the electroweak scale in three-lepton final states in s√ = 13 TeV pp collisions with the ATLAS detector. 2019. [doi:10.17182/hepdata.91127](https://doi.org/10.17182/hepdata.91127).
- Searches for electroweak production of supersymmetric particles with compressed mass spectra in s√=13 TeV pp collisions with the ATLAS detector. 2019. [doi:10.17182/hepdata.91374](https://doi.org/10.17182/hepdata.91374)
- Search for direct stau production in events with two hadronic τ-leptons in s√=13 TeV pp collisions with the ATLAS detector. 2019. [doi:10.17182/hepdata.92006](https://doi.org/10.17182/hepdata.92006).
- Search for direct production of electroweakinos in final states with one lepton, missing transverse momentum and a Higgs boson decaying into two b-jets in (pp) collisions at s√=13 TeV with the ATLAS detector. 2019. [doi:10.17182/hepdata.90607](https://doi.org/10.17182/hepdata.90607).
- Search for squarks and gluinos in final states with same-sign leptons and jets using 139 fb−1 of data collected with the ATLAS detector. 2019. [doi:10.17182/hepdata.91214](https://doi.org/10.17182/hepdata.91214).
- Search for bottom-squark pair production with the ATLAS detector in final states containing Higgs bosons, b-jets and missing transverse momentum. 2019. [doi:10.17182/hepdata.89408](https://doi.org/10.17182/hepdata.89408).
