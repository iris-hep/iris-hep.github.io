---
permalink: /projects/ml-on-fpgas.html
layout: project
title: ML on FPGAs
shortname: ml-on-fpgas
pagetype: project
image: logos/Iris-hep-5-just-graphic.png
blurb: Fast inference of deep neural networks on FPGAs
focus-area: ia
team:
 - dcraik
 - msneubauer
 - pharris
 - drankincms

---

Machine learning has become an extremely popular solution for a broad range of problems in high energy physics, from jet-tagging to signal extraction.
While the application of machine learning can offer unrivaled performance, its use can also be expensive from both a latency and a computation perspective.
While accelerating inference on GPUs can offer some improvements, another specialized architecture, field-programmable gate arrays (FPGAs), can further improve inference speeds.
Performing inference on FPGAs has the potential to greatly reduce the computational resources required at large HEP experiments.

This work consists of both the further develoment of the [hls4ml](https://hls-fpga-machine-learning.github.io/hls4ml/) tool ([J. Duarte et al. 2018](https://arxiv.org/abs/1804.06913)) as well as the study of applications for fast inference on FPGAs.
Ongoing developments of the hls4ml tool itself include wider support for neural network layer architectures and machine learning libraries, and improvments to the performance of the tools for large networks.
Ongoing studies on the applications of machine learning on FPGAs include their use for particle tracking, calorimeter reconstruction, and particle identification. 

This work also involves studies of large-scale heterogeneous computing using Brainwave at Microsoft Azure, Google Cloud Platform (GCP), and Amazon Web Services (AWS).
Brainwave and GCP have both been used in studying the capabilities of cloud-based heterogeneous computing ([J. Duarte et al. 2019](https://arxiv.org/abs/1904.08986)), which appears extremely promising as an option for low-cost and low-latency inference acceleration (see table below).
AWS has been used extensively for prototyping applications in heterogeneous environments, and will also be used to investigate alternative models for cloud-based heterogeneous computing.

<img src="/assets/images/sonic_summary_table.png" width="70%" alt="SONIC summary table" />


[![GitHub](https://img.shields.io/badge/GitHub-555555.svg)](https://github.com/hls-fpga-machine-learning/hls4ml). 
[![DOI](https://zenodo.org/badge/doi/10.5281/zenodo.1204445.svg)](https://zenodo.org/badge/latestdoi/108329371) 

{% include list_project_team.md team=page.team%}

{% include list_project_presentations.md shortname=page.shortname %}

{% include list_project_publications.md shortname=page.shortname %}
