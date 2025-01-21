---
layout: fellow
pagetype: fellow
permalink: /fellows/rkarur.html
fellow-name: Rohith Karur
title: Rohith Karur - IRIS-HEP Fellow
active: false
dates:
  start: 2021-06-14
  end: 2021-09-13
photo: /assets/images/team/fellows-2021/Rohith-Karur.jpg
institution: UC Berkeley/LBNL
e-mail: r_karur137@berkeley.edu
project_title: Implement hashing-based particle track reconstruction in ACTS
focus-area: ia
project_goal: >
  We will work on implementing similarity hashing techniques using the Approximate
  Nearest Neighbors (ANN) search method using C++ and Python into the ACTS project
  at CERN. The minimization of search complexity in identifying track hits is a tool
  which will be invaluable to data collection at the HL-LHC. After identifying particle
  track clusters using the ANN method, we will then use existing Kalman Filters to
  focus on these clusters to comprehensively perform track reconstruction. We will
  then plan on tuning parameters to optimize both the complexity of the algorithm
  as well as the track reconstruction performance, and maximizing the extent to which
  our code can be parallelized. We will also implement an extension to this project
  in which the track reconstruction is performed with neural networks instead of Kalman
  filter.
mentors:
- Louis-Guillaume Gagnon (UC Berkeley)
- Heather Gray (UC Berkeley, LBNL)
proposal: /assets/pdf/fellows-2021/Fellow-Rohith-Karur-Proposal.pdf
presentations:
- title: ANNs for ACTS
  date: 2021-10-18
  url: https://indico.cern.ch/event/1071423/contributions/4505208/attachments/2330053/3970339/ACTS%20LBL%20Presentation.pdf
  meetingurl: https://indico.cern.ch/event/1071423/
  recordingurl: https://youtu.be/jAyJSDiWxhw
  focus-area: ia
github-username: rkarur
linkedin-profile: https://www.linkedin.com/in/rohith-karur-2007bb16a/
challenge-area:
---