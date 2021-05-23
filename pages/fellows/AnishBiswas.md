---
permalink: /fellows/AnishBiswas.html
layout: fellow
pagetype: fellow
active: true
title: Anish Biswas - IRIS-HEP Fellow
fellow-name: Anish Biswas
shortname: Anish
project_title: Enabling auto-differentiation for Awkward Array functions
focus-area:
dates:
  start: 2021-01-09
  end: 2021-04-03
photo: /assets/images/team/Anish-Biswas.jpg
institution: Manipal Institute of Technology
website:
e-mail: anishbiswas271@gmail.com
mentors:
  - Jim Pivarski (Princeton University)
  - Lukas Henreich (CERN)
  - David Lange (Princeton University)
project_goal: >
   The IRIS-HEP Analysis Systems group is investigating whole-analysis differentiability to improve analysis optimization (grad-hep). However, not all operations in Awkward Array can be differentiated, so an analysis that uses this library can’t take advantage of this technique. There are several popular machine learning frameworks that make use of auto-differentiation. Out of these, Tensorflow, PyTorch and JAX are the most popular ones. This project seeks to compute derivatives for operations in Awkward Arrays, and integrate them with these libraries so that all functions containing Awkward Arrays can be differentiated by them. The ​grad-hep group of IRIS-HEP is primarily focused on end-to-end analysis, and they use JAX as their primary library for auto-differentiation. Awkward Arrays and Uproot are becoming a standard within the particle physics community and without having derivatives of Awkward Array operations in place, the entire idea behind whole-analysis differentiability(​neos​) would be unable to proceed. One of the major parts of this project, hence, aims to enable JAX to differentiate functions containing Awkward Arrays.
proposal: /assets/pdf/AnishBiswas_Proposal.pdf
presentations:
---
