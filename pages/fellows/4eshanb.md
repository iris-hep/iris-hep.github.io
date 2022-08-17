---
layout: fellow
pagetype: fellow
permalink: /fellows/4eshanb.html
fellow-name: Eshan Bhargava
title: Eshan Bhargava - IRIS-HEP Fellow
active: false
dates:
  start: 2021-06-14
  end: 2021-09-10
photo: /assets/images/team/Eshan-Bhargava.jpg
institution: University of Southern California
e-mail: 4eshanb@gmail.com
project_title: SkyhookDM - Ability to push back query execution to Client in case
  of overloaded OSDs
focus-area: doma
project_goal: >
  Currently, SkyhookDM allows pushing down compute operations such as selection and
  projection into the Ceph file system, which is the Storage Layer. However, when
  a large number of clients try to push down computation into OSDs at a time, the
  CPU and memory pressure of the OSDs may quickly increase, causing run-time side
  effects such as blocked and slow OSD operations.

  The goal of this project is to create functionality, such that if there is high
  CPU and memory pressure in the OSDs, for which they cannot process filters or expressions
  efficiently, the query execution is pushed back to the client for processing.
mentors:
- Jeff LeFevre (UC Santa Cruz)
- Jianshen Liu (UC Santa Cruz)
- Jayjeet Chakraborty (NIT, Durgapur)

proposal: /assets/pdf/Fellow-Eshan-Bhargava-Proposal.pdf
presentations:
- title: SkyhookDM - Ability to Push back query execution to Client in case of overload
    OSDs
  date: 2021-10-25
  url: https://indico.cern.ch/event/1071412/contributions/4505159/attachments/2333864/3977762/Eshan_Bhargava_SkyhookDM_Query_Pushback_IRIS_HEP.pdf
  meeting: IRIS-HEP Topical Meetings
  meetingurl: https://indico.cern.ch/event/1071412/
  recordingurl: https://youtu.be/0Z7an2D-dKc
  focus-area: doma

current_status: >
  <strong>December 2021</strong> - Graduate student in Computer Science at the University of Southern California

github-username: 4eshanb

---
