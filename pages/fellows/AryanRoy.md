---
permalink: /fellows/AryanRoy.html
layout: fellow
pagetype: fellow
active: true
title: Aryan Roy - IRIS-HEP Fellow
fellow-name: Aryan Roy
focus-area:
dates:
- start: 2021-04-04
  end: 2021-08-30
- start: 2022-05-25
  end: 2022-07-23
photo: /assets/images/team/Aryan-Roy.jpg
institution: Manipal Institute of Technology
website:
e-mail: aryanroy5678@gmail.com

projects:
- project_title: Modernizing FastJet Interfaces With pybind11 and  interfacing with Awkward Arrays
  project_goal: >
    The currently available bindings for fastjet are old and hard to maintain, therefore,
    in this project we aim to remake the python bindings from the ground up using pybind11
    and integrating support from several different python libraries such as Vector and
    Awkward Array to facilitate easier handling of data and simpler maintenance in future
    and to ensure that the later additions to the fastjet library can be brought to
    python with little to no effort.
  mentors:
  - Jim Pivarski (Princeton University)
  - Eduardo Rodrigues (outside collaborator, University of Liverpool)
  proposal: /assets/pdf/AryanRoy_Proposal.pdf

projects:
- project_title: Accelerating Uproot with AwkwardForth
  project_goal: >
    Uproot is a Python library made for ROOT I/O. Uproot can only read columnar data quickly. The record-oriented layouts are hundreds of times slower, hence, in this project we aim to accelerate Uproot using AwkwardForth, a Domain Specific Language. This fellowship will involve writing up a meta-programming solution to generate schema-specific AwkwardForth code to read ROOT files. This project will result in a fully functional ROOT format reader that can replace the current solution and also outperform it.
  mentors:
  - Jim Pivarski (Princeton University)
  proposal: /assets/pdf/fellows-2022/039-proposal-Aryan-Roy.pdf


presentations:
- title: fastjet - Vectorized Jet-finding in Python
  date: 2021-09-08
  url: https://indico.cern.ch/event/1071399/contributions/4505115/attachments/2305850/3922853/fastjet%20%285%29.pdf
  meeting: IRIS-HEP Topical Meetings
  meetingurl: https://indico.cern.ch/event/1071399/
  recordingurl: https://youtu.be/XIq9DyWIOP8
  focus-area: as
github-username: aryan26roy

---
