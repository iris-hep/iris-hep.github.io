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
Out of the machine learning revolution new processor technologies have emerged, which lead to large algorithmic speedups. These new processors include GPUs, and Field Programmable Gate Arrays (FPGAs).
Both GPUs, and FPGAs have different advantages. GPUs yield very large speed ups in algorithmic throughput. Whereas, FPGAs yield very large single algorithmic inference speed ups.
The speed-ups presented through both these new processor technologies are remarkable, and it is the goal of this project to demonstrate the effectiveness of this new processor technologies within realistic workflows at the LHC and eventually to deploy them.
The strategy of this project is to find specfic algorithms that take long latencies and replace them with machine learning algorithm that is significantly faster.
The focus so far of this work has been on the reconstruction of the CMS Hadronic calorimeter.

This work consists of both the further development of the [hls4ml](https://fastmachinelearning.org/hls4ml/) tool ([J. Duarte et al. 2018](https://arxiv.org/abs/1804.06913)) as well as the study of applications for fast inference on FPGAs and GPUs.
Ongoing developments of the hls4ml tool itself include wider support for neural network layer architectures and machine learning libraries, and improvements to the performance of the tools for large networks.
Ongoing studies on the applications of machine learning on FPGAs include their use for particle tracking, calorimeter reconstruction, and particle identification.

This work also involves studies of large-scale heterogeneous computing using Brainwave at Microsoft Azure, Google Cloud Platform (GCP), and Amazon Web Services (AWS).
Brainwave and GCP have both been used in studying the capabilities of cloud-based heterogeneous computing ([J. Duarte et al. 2019](https://arxiv.org/abs/1904.08986)), which appears extremely promising as an option for low-cost and low-latency inference acceleration (see table below).
AWS has been used extensively for prototyping applications in heterogeneous environments, and will also be used to investigate alternative models for cloud-based heterogeneous computing.

![SONIC summary table](/assets/images/sonic_summary_table.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}

[![GitHub](https://img.shields.io/badge/GitHub-555555.svg)](https://github.com/hls-fpga-machine-learning/hls4ml).
[![DOI](https://zenodo.org/badge/doi/10.5281/zenodo.1204445.svg)](https://zenodo.org/badge/latestdoi/108329371)

Out of this work has emerged the SONIC framework. This framework exploits asynchronous scheduling from IntelTBB to simultaneously run CMS reconstruction, and remote neural network algorithms at the LHC.
In particular, we have now developed an Hcal reconstruction algorith, which yields improved Hcal reconstruction, MET/Jet performance, and can be run within SONIC.
We observe a 10% reduction in the operation of the CMS HLT reconstruction, and we have constructed a set of guidelines that we can use for deploying as-aservice computing at the LHC.


