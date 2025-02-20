---
layout: fellow
pagetype: fellow
shortname: JerryLing
permalink: /fellows/JerryLing.html
fellow-name: Jerry Ling
title: Jerry Ling - IRIS-HEP Fellow
active: false
dates:
  start: 2022-06-26
  end: 2022-09-26
photo: /assets/images/team/fellows-2022/Jerry-Ling.jpg
institution: Harvard University
e-mail: jling@g.harvard.edu
project_title: Reading (and possibly writing) RNTuples in Uproot
project_goal: >
  [Uproot](https://github.com/scikit-hep/uproot5#readme) is a Python library that
  reads and writes ROOT files, the file format for nearly all particle physics data.
  RNTuple is a new, fully columnar data format for ROOT, which is intended as the
  eventual replacement for TTree ([paper](https://arxiv.org/abs/2003.07669), [plans](https://indico.jlab.org/event/420/contributions/7701/),
  and [spec](https://github.com/root-project/root/blob/a483a2bc75552301e3347c56898df07b95fe45f9/tree/ntuple/v7/doc/specifications.md).
  Thanks to its columnar structure, data structures of any complexity can be zero-copy
  converted (apart from decompression) into [Awkward Arrays](https://github.com/scikit-hep/awkward#readme).
  In this project, the successful candidate would develop the interface code in Uproot
  to read RNTuple data into Awkward Arrays. If time permits, the candidate may attempt
  to implement RNTuple-writing and RNTuple reading in sister projects in Julia-lang
  as well.
mentors:
- Jim Pivarski - (Princeton)
proposal: /assets/pdf/fellows-2022/xyz-proposal-Jerry-Ling.pdf
presentations:
- title: RNtuple in Uproot
  date: 2023-01-25
  url: https://indico.cern.ch/event/1222943/contributions/5144789/attachments/2580539/4450747/IRISHEP_RNTuple.pdf
  meeting: RNtuple in Uproot
  meetingurl: https://indico.cern.ch/event/1222943/
  recordingurl: https://www.youtube.com/watch?v=g-RVRvVE6Tg
  focus-area: <Focus Area - as>
current_status: >
  Completed
github-username: Moelf
linkedin-profile: https://www.linkedin.com/in/jerrylinghep
focus-area:
challenge-area:
funding-source: nsf
---
