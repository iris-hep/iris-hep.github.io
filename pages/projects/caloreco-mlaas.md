---
permalink: /projects/caloreco-mlaas.html
layout: project
title: Accelerators and ML for reconstruction
shortname: caloreco-mlaas
pagetype: project
image: logos/fpga_ml_results.png
blurb: Accelerated calorimeter reconstruction using Machine Learning as a Service
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

This work consists of both the further development of the [hls4ml](https://fastmachinelearning.org/hls4ml/) tool ([J. Duarte et al. 2018](https://arxiv.org/abs/1804.06913)) as well as the study of applications for fast inference on FPGAs.
Ongoing developments of the hls4ml tool itself include wider support for neural network layer architectures and machine learning libraries, and improvements to the performance of the tools for large networks.
Ongoing studies on the applications of machine learning on FPGAs include their use for particle tracking, calorimeter reconstruction, and particle identification.

This work also involves studies of large-scale heterogeneous computing using Brainwave at Microsoft Azure, Google Cloud Platform (GCP), and Amazon Web Services (AWS).
Brainwave and GCP have both been used in studying the capabilities of cloud-based heterogeneous computing ([J. Duarte et al. 2019](https://arxiv.org/abs/1904.08986)), which appears extremely promising as an option for low-cost and low-latency inference acceleration (see table below).
AWS has been used extensively for prototyping applications in heterogeneous environments, and will also be used to investigate alternative models for cloud-based heterogeneous computing.

![SONIC summary table](/assets/images/sonic_summary_table.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}

[![GitHub](https://img.shields.io/badge/GitHub-555555.svg)](https://github.com/hls-fpga-machine-learning/hls4ml).
[![DOI](https://zenodo.org/badge/doi/10.5281/zenodo.1204445.svg)](https://zenodo.org/badge/latestdoi/108329371)

