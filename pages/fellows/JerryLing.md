---
layout: fellow
pagetype: fellow
shortname: JerryLing
permalink: /fellows/JerryLing.html
fellow-name: Jerry Ling
title: Jerry Ling - IRIS-HEP Fellow
active: True
dates:
  start: 2022-06-26
  end: 2022-09-26
photo: /assets/images/team/Jerry-Ling.jpg
institution: Harvard University
e-mail: jling@g.harvard.edu
project_title: Reading (and possibly writing) RNTuples in Uproot
project_goal: >
  [Uproot](https://github.com/scikit-hep/uproot5#readme) is a Python library that
  reads and writes ROOT files, the file format for nearly all particle physics data.
  RNTuple is a new, fully columnar data format for ROOT, which is intended as the
  eventual replacement for TTree ([paper](https://arxiv.org/abs/2003.07669),
  [plans](https://indico.jlab.org/event/420/contributions/7701/), and
  [spec](https://github.com/root-project/root/blob/a483a2bc75552301e3347c56898df07b95fe45f9/tree/ntuple/v7/doc/specifications.md).
  Thanks to its columnar structure, data structures of any complexity can be
  zero-copy converted (apart from decompression) into
  [Awkward Arrays](https://github.com/scikit-hep/awkward#readme). In this
  project, the successful candidate would develop the interface code in Uproot to
  read RNTuple data into Awkward Arrays. If time permits, the candidate may attempt
  to implement RNTuple-writing and RNTuple reading in sister projects in Julia-lang
  as well.
mentors:
  - Jim Pivarski - (Princeton)

proposal: /assets/pdf/fellows-2022/xyz-proposal-Jerry-Ling.pdf
presentations:
  - title: "<Presentation Title"
    date: "Presentation Date"
    url: <Presentation materials link>
    meeting: <Meeting name>
    meetingurl: <Meeting url - indico link, etc.>
    recordingurl: <Recording url> (Optional)
    focus-area: <Focus Area - as>
current_status: >
  A placeholder for status updates
github-username: Moelf
---
