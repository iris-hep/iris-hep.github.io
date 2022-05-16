---
permalink: /projects/ppx.html
layout: project
title: ppx
shortname: ppx
pagetype: project
image: logos/ppx-logo.png
logowidth: 45%
blurb: Cross-platform Probabilistic Programming eXecution protocol
maturity: Deployed
maturity-note:
start-date: 2018-07-01
focus-area: as
team:
 - cranmer
 - Atılım Güneş Baydin
 - Tuan Anh Le
 - Lukas Heinrich
 - Wahid Bhimji
 - Kyle Cranmer
 - Frank Wood
---


`PPX` is a cross-platform Probabilistic Programming eXecution protocol and API based on flatbuffers. It is intended as an open interoperability protocol between models and inference engines implemented in different probabilistic programming languages. PPX is related to [pyprob](https://github.com/probprog/pyprob), a PyTorch-based library for probabilistic programming and inference compilation. See Atılım Güneş Baydin's [keynote talk at ACAT2019](https://indico.cern.ch/event/708041/contributions/3308721/).

Find `PPX` on [![GitHub](https://img.shields.io/badge/GitHub-555555.svg)](https://github.com/probprog/ppx)


This work led to the following publicatoins:

  * "Efficient Probabilistic Inference in the Quest for Physics Beyond the Standard Model",  [arXiv:1807.07706](https://arxiv.org/abs/1807.07706) ) published in NeurIPS2019.

  * "Etalumis: Bringing Probabilistic Programming to Scientific Simulators at Scale", A. Baydin, L. Shao, W. Bhimji, L. Heinrich, L. Meadows et. al.,  [published in SC19](https://dl.acm.org/doi/abs/10.1145/3295500.3356180) [arXiv:1907.03382](http://inspirehep.net/record/1742890) https://dl.acm.org/doi/10.1145/3295500.3356180  (07 Jul 2019)

The Etalumis project was nominated for best paper at SC'19 (SuperComputing) and has been written about [here](https://phys.org/news/2019-11-etalumis-reverses-simulations-reveal-science.html) and [here](https://www.nextplatform.com/2020/02/04/using-bayesian-inference-to-reverse-engineer-decades-of-hpc/).


The `PPX` protocol and `pyprob` tool have since been applied to epidemiological studies such as Malaria and COVID19:

 *  "Hijacking Malaria Simulators with Probabilistic Programming", [arXiv:1905.12432](https://arxiv.org/abs/1905.12432)
 * "Planning as inference in epidemiological dynamics models" by Warrington, A., Naderiparizi, S., Weilbach, C., Masrani, V., Harvey, W., Scibior, A., Beronov, B., & Nasseri, A. (2020) [arXiv:2003.13221](https://arxiv.org/abs/2003.13221)
 * "Simulation-Based Inference for Global Health Decisions" by Christian Schroeder de Witt, Bradley Gram-Hansen, Nantas Nardelli, Andrew Gambardella, Rob Zinkov, Puneet Dokania, N. Siddharth, Ana Belen Espinosa-Gonzalez, Ara Darzi, Philip Torr, and Atılım Güneş Baydin [arXiv:2005.07062](https://arxiv.org/abs/2005.07062).

These tools are now also being used to extend Dark Matter  astrophysics by instrumenting the simulation of strong gravitational lensing used in [Mining for Dark Matter Substructure: Inferring subhalo population properties from strong lenses with machine learning](https://inspirehep.net/literature/1752736)
