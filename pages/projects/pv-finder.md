---
permalink: /projects/pv-finder.html
layout: project
title: PV-Finder
shortname: pv-finder
pagetype: project
image: /logos/pv_finder_logo_1.png
logowidth: 60%
blurb: CNNs to find primary vertices
maturity: Testing
maturity-note:
focus-area: ia
github: https://gitlab.cern.ch/LHCb-Reco-Dev/pv-finder
start-date: 2018-01-19
team:
 - henryiii
 - mdsokoloff
 - mityinzer
 - marianstahl
 - Rui Fang
 - AtluriLab
 - likt1
---



The upcoming upgrades at the LHC have fueled increasing interest in alternative highly-parallel and GPU friendly algorithms for tracking and reconstruction. The PV-Finder project is developing a novel prototype algorithm for vertexing in high density collisions using a Convolutional Neural Network (CNN).

The PV-Finder algorithm uses a custom kernel to transform the sparse 3D space of hits and tracks into a dense 1D dataset, and then Deep Learning techniques are used to find PV locations. By training networks on our kernels using several CNN layers, we have achieved better than 90% efficiency with no more than 0.2 False Positives (FPs) per event. Beyond its physics performance, this algorithm also provides a rich collection of possibilities for visualization and study of 1D convolutional networks.

The current version of PV-Finder is based on a toy simulation of the LHCb detector in Run 3 conditions. We are breaking out the kernel generation, to allow the algorithm to be run on different inputs, such as the official LHCb framework, ATLAS or ACTS, and CMS track output.

The code currently lives at [gitlab.cern.ch/LHCb-Reco-Dev/pv-finder](https://gitlab.cern.ch/LHCb-Reco-Dev/pv-finder).
