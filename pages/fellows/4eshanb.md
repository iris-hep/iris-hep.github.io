---
layout: fellow
pagetype: fellow
shortname: 4eshanb
permalink: /fellows/4eshanb.html
fellow-name: Eshan Bhargava
title: Eshan Bhargava - IRIS-HEP Fellow
active: True
dates:
  start: 2021-06-14
  end: 2021-09-10
photo: /assets/images/team/Eshan-Bhargava.jpg
institution: University of Southern California
e-mail: 4eshanb@gmail.com
project_title: SkyhookDM - Ability to push back query execution to Client in case of overloaded OSDs
project_goal: >
  Currently, SkyhookDM allows pushing down compute operations such as selection and projection into the Ceph file system, which is the Storage Layer. However, when a large number of clients try to push down computation into OSDs at a time, the CPU and memory pressure of the OSDs may quickly increase, causing run-time side effects such as blocked and slow OSD operations.

  The goal of this project is to create functionality, such that if there is high CPU and memory pressure in the OSDs, for which they cannot process filters or expressions efficiently, the query execution is pushed back to the client for processing.
mentors:
  - Jeff LeFevre - (UC Santa Cruz)
  - Jianshen Liu - (UC Santa Cruz)
  - Jayjeet Chakraborty - (NIT, Durgapur)

proposal: /assets/pdf/Fellow-Eshan-Bhargava-Proposal.pdf
presentations:

current_status: >

---
