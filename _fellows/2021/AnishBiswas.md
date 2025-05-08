---
permalink: /fellows/AnishBiswas.html
layout: fellow
pagetype: fellow
active: false
title: Anish Biswas - IRIS-HEP Fellow
fellow-name: Anish Biswas
project_title: Enabling auto-differentiation for Awkward Array functions
focus-area: as
dates:
  start: 2021-01-09
  end: 2021-04-03
photo: /assets/images/team/fellows-2021/Anish-Biswas.jpg
institution: Manipal Institute of Technology
website:
e-mail: anishbiswas271@gmail.com
mentors:
- Jim Pivarski (Princeton University)
- Lukas Henreich (CERN)
- David Lange (Princeton University)
project_goal: "The IRIS-HEP Analysis Systems group is investigating whole-analysis\
  \ differentiability to improve analysis optimization (grad-hep). However, not all\
  \ operations in Awkward Array can be differentiated, so an analysis that uses this\
  \ library can\u2019t take advantage of this technique. There are several popular\
  \ machine learning frameworks that make use of auto-differentiation. Out of these,\
  \ Tensorflow, PyTorch and JAX are the most popular ones. This project seeks to compute\
  \ derivatives for operations in Awkward Arrays, and integrate them with these libraries\
  \ so that all functions containing Awkward Arrays can be differentiated by them.\
  \ The \u200Bgrad-hep group of IRIS-HEP is primarily focused on end-to-end analysis,\
  \ and they use JAX as their primary library for auto-differentiation. Awkward Arrays\
  \ and Uproot are becoming a standard within the particle physics community and without\
  \ having derivatives of Awkward Array operations in place, the entire idea behind\
  \ whole-analysis differentiability(\u200Bneos\u200B) would be unable to proceed.\
  \ One of the major parts of this project, hence, aims to enable JAX to differentiate\
  \ functions containing Awkward Arrays.\n"
proposal: /assets/pdf/fellows-2021/AnishBiswas_Proposal.pdf
presentations:
- title: Enabling auto-differentiation for Awkward Array functions
  date: 2021-05-10
  url: https://indico.cern.ch/event/1033648/contributions/4340841/attachments/2242325/3802149/Anish%20Biswas%20Awkward%20Arrays%20JAX.pdf
  meeting: IRIS-HEP Topical Meetings
  meetingurl: https://indico.cern.ch/event/1033648/
  recordingurl: https://youtu.be/hQrCdt5gKck
  focus-area: as
current_status: >
  <strong>July 2022</strong> - Software Engineer at Microsoft
github-username: swishdiff
linkedin-profile: https://www.linkedin.com/in/anish-biswas
challenge-area:
funding-source: other
---