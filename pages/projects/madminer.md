---
permalink: /projects/madminer.html
layout: project
title: MadMiner
shortname: madminer
pagetype: project
image: logos/madminer-square.png
blurb: Likelihood-free Inference
maturity: Deployed
maturity-note:
github: https://github.com/madminer-tool/madminer
start-date: 2018-06-03
focus-area: as
team:
 - cranmer
 - johannbrehmer
 - irinaespejo
 - sinclert
 - Felix Kling
---



<img alt="MadMiner logo" src="/assets/logos/madminer.png" width="100%" />


Particle physics processes are usually modelled with complex Monte-Carlo simulations of the hard process, parton shower,
and detector interactions. These simulators typically do not admit a tractable likelihood function: given a (potentially
high-dimensional) set of observables, it is usually not possible to calculate the probability of these observables
for some model parameters. Particle physicists usually tackle this problem of "likelihood-free inference" by
hand-picking a few "good" observables or summary statistics and filling histograms of them. But this conventional
approach discards the information in all other observables and often does not scale well to high-dimensional problems.

In the three publications
["Constraining Effective Field Theories With Machine Learning"](https://arxiv.org/abs/1805.00013),
["A Guide to Constraining Effective Field Theories With Machine Learning"](https://arxiv.org/abs/1805.00020), and
["Mining gold from implicit models to improve likelihood-free inference"](https://arxiv.org/abs/1805.12244),
a new approach has been developed. In a nut shell, additional information is extracted from the simulators. This
"augmented data" can be used to train neural networks to efficiently approximate arbitrary likelihood ratios. We
playfully call this process "mining gold" from the simulator, since this information may be hard to get, but turns out
to be very valuable for inference.


[![GitHub](https://img.shields.io/badge/GitHub-555555.svg)](https://github.com/madminer-tool/madminer)
[![PyPI version](https://badge.fury.io/py/madminer.svg)](https://badge.fury.io/py/madminer)
[![Documentation Status](https://readthedocs.org/projects/madminer/badge/?version=latest)](https://madminer.readthedocs.io/en/latest/?badge=latest)
[![CI Status](https://github.com/madminer-tool/madminer/actions/workflows/ci.yml/badge.svg?branch=master)](https://github.com/madminer-tool/madminer/actions/workflows/ci.yml?query=branch%3Amaster)
[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/madminer-tool/madminer/master)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/ambv/black)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1489147.svg)](https://doi.org/10.5281/zenodo.1489147)
