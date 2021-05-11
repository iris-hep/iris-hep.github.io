---
permalink: /fellows/XiongfengSong.html
layout: fellow
pagetype: fellow
active: false
title: Xiongfeng Song - IRIS-HEP Fellow
fellow-name: Xiongfeng Song
shortname: Xiongfeng
project_title: Implement Skyhook row index filter operation, Awkward list in-storage operations and Coffea processor/executor
focus-area:
dates:
  start: 2020-06-01
  end: 2020-08-31
photo: /assets/images/team/Xiongfeng_Song.JPG
institution: Rice University
website: https://github.com/kingwind123
e-mail: xs16@rice.edu
mentors:
  - Jeff LeFevre(University of California Santa Cruz)

project_goal: >
  Skyhook project is an extension of Ceph for the scalable storage of tables and for offloading common data management operations on them. It supports row-based processing via Google Flatbuffers format and col-based processing via Apache Arrow formats. What we want to implement then is to select the rows according to the Boolean predicate (return true) from trigger columns. This is similar to the Arrow’s take operation. In the second phase, if time permits, we will determine a feasible subset of operations that can be applied in storage by Skyhook, and then implement them for each list type (int, float, bool, etc.). In phase 3, we plan to implement the cpp version of Coffea (Columnar Object Framework For Effective Analysis). There is one for Spark, we want to create a new processor interface for Skyhook, which will be very similar to the Spark processor/executor interface.


proposal: /assets/pdf/Fellow-Xiongfeng-Proposal.pdf
presentations:
---
