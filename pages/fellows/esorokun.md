---
layout: fellow
pagetype: fellow
shortname: 11018612
permalink: /fellows/esorokun.html
fellow-name: Ernest Sorokun
title: Ernest Sorokun - IRIS-HEP Fellow
active: True
dates:
  start: 2022-08-01
  end: 2022-10-23
  start: 2023-06-12
  end: 2023-09-1
photo: /assets/images/team/Ernest-Sorokun.jpg
institution: Taras Shevchenko National University of Kyiv
e-mail: sorokun.ernest@gmail.com

projects:
- project_title: Data Reduction for the ProtoDUNE Detector Control System
  project_goal: >
    The reconstruction of particle trajectories in a LArTPC critically relies on understanding the conditions under which the data was taken such as temperature, purity and pressure of the LAr, or the high voltage between the wire planes. One use case of this data is to exclude periods of unstable high voltage (from short cuts, power cuts, etc. . . ) for further data analysis. Currently, these unstable periods are identified as cases where the system resistance is lower than a hand-picked value. My project is to create an algorithm which can improve this filtering system using an unsupervised Machine Learning approach (e.g. Anomaly Detection).
  mentors:
  - Dr. Lino Gerlach (Brookhaven National Laboratory, USA)
  proposal: /assets/pdf/fellows-2022/234-proposal-Ernest-Sorokun.pdf

projects: 
- project_title: Intelligent Caching for the HSF Conditions Database: Investigate patterns in conditions database accesses
  project_goal: >
    Conditions data (voltage, current, temperature, detector calibration, etc.) is an important part of all HEP experiments and is required to process event data. Access to conditions data is critical to producing the best physics results from HEP experiments. The challenges for conditions data access are many, notably the requirement to provide simultaneous read access to conditions data for distributed computing resources at kHz rates. One way to improve the performance of a Conditions Database is to use a cache, but the main problem is that it can only store a limited number of queries, so we need to make a smart choice of the records we want to store, namely those that are more likely to be queried many time. The goal is to identify patterns in database queries that will help develop an intelligent caching solution.
  - Dr. Lino Gerlach (Brookhaven National Laboratory, USA)
proposal:/assets/pdf/fellows-2023/U028-proposal-Ernest-Sorokun.pdf

presentations:
- title: Data Reduction for the ProtoDUNE Detector Control System
  date: 2022-10-19
  url: https://indico.cern.ch/event/1199559/contributions/5097273/attachments/2531409/4355499/ernest_irishep_presentation.pdf
  meeting: IRIS-HEP Fellows Presentations 2022
  meetingurl: https://indico.cern.ch/event/1199559/
  recordingurl: https://youtu.be/gEaqn7C9ipY
  focus-area:
current_status: >
  A placeholder for status updates
github-username: esorokun
---