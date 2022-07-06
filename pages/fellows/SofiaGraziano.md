---
permalink: /fellows/SofiaGraziano.html
layout: fellow
pagetype: fellow
fellow-name: Sofia Graziano
title: Sofia Graziano - IRIS-HEP Fellow
active: false
dates:
  start: 2021-05-14
  end: 2021-08-14
photo: /assets/images/sofiagraziano.png
institution: University of Pennsylvania
e-mail: sofiagra@sas.upenn.edu
project_title: Developing Symmetric Graph Neural Networks for Charged Particle Tracking
focus-area: ia
project_goal: >
  Charged particle tracking is essential in characterizing particles produced in colliders;
  traditional tracking algorithms scale up poorly, and new methods need to be developed.
  One approach is to use geometric deep learning to classify connections between tracker
  hits as true or false, and then link them together to form final track candidates.
  This can be done using graph neural networks (GNNs) by first con- structing a graph
  of tracker events and then processing the graph with an intelligent network (IN)
  or similar architecture. Graphs are a natural representation of particle data because
  hits can be represented as nodes and track segments can be represented as edges.
  This project proposes constructing the GNN, and implementing the function that the
  GNN learns on using the equivariant approach. I will investigate the rotational,
  CPT, and other symmetries that the dataset should have and construct and train the
  GNN to be equivariant to these symmetries to help constrain the network size and
  improve the accuracy of the machine learning algorithm.
mentors:
- Savannah Thais (Princeton University)
- Daniel Murnane (LBNL)
proposal: /assets/pdf/SofiaGrazianoProposal.pdf
presentations:
- title: Rotationally Equivariant Graph Neural Networks
  date: 2021-11-01
  url: https://indico.cern.ch/event/1082474/contributions/4589888/attachments/2337501/3984346/Rotationally%20Equivariant%20Graph%20Neural%20Networks.pdf
  meeting: IRIS-HEP Topical Meetings
  meetingurl: https://indico.cern.ch/event/1082474/
  recordingurl: https://youtu.be/k6T12vY41oA
  focus-area: ia
github-username: sofiagra

---
