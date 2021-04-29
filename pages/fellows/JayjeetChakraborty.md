---
permalink: /fellows/JayjeetChakraborty.html
layout: fellow
pagetype: fellow
active: true
fellow-name: Jayjeet Chakraborty
shortname: JayjeetAtGithub
title: Jayjeet Chakraborty - IRIS-HEP Fellow
dates:
- start: 2020-06-01
  end: 2020-09-30
- start: 2021-01-10
  end: 2021-07-10
photo: /assets/images/team/Jayjeet-Chakraborty.png
institution: National Institute Of Technology, Durgapur
website: https://github.com/JayjeetAtGithub/
e-mail: jayjeetchakraborty25@gmail.com

projects:
- project_title: Reproducible, large-scale SkyhookDM experiments
  project_goal: >
    SkyhookDM injects programmable data management and data storage capabilities directly
    in the storage layer of distributed object databases such as Ceph. SkyhookDM utilizes and extends
    the Ceph distributed object storage platform with customized C++ object classes that enable
    database operations such as SELECT, PROJECT, AGGREGATE to be offloaded directly into the
    object storage layer, allowing applications to efficiently query multi-dimensional
    arrays. Compiling Ceph along with Skyhook and running benchmark tests consists of a number of
    steps and can become irreproducible at times. The aim of this project is to implement a
    reproducible workflow with Popper to automate large-scale tests on different cloud
    infrastructure like GCP, Cloudlab and Kubernetes clusters and benchmark SkyhookDM at the 10's of terabyte
    scale over the various supported data formats.
  proposal: /assets/pdf/Fellow-Jayjeet-Chakraborty-Proposal.pdf
  mentors:
    - Carlos Maltzahn (UC Santa Cruz)
    - Ivo Jimenez  (UC Santa Cruz)
    - Jeff LeFevre (UC Santa Cruz)

- project_title: Arrow-Native Storage with SkyhookDM Ceph
  project_goal: >
    Apache Arrow​ is a columnar in-memory format for seamless data transfer between different big data systems. It mitigates the need for serializing and deserializing data. It has native abstractions for use in Big Data storage systems. We aim to convert ​SkyhookDM​ into an Arrow-Native storage system by utilizing the Object class SDK provided by ​Ceph​ to add a layer in its storage side using the Arrow C++ SDK to allow querying and processing of tabular datasets stored as objects in Apache Arrow format both in the storage and client side. We aim to upstream the Rados specific implementations of the Arrow C++ SDK also. Native support for Arrow will allow applications such as Coffea Processors, and ServiceX transformers to seamlessly interact with SkyhookDM, as well as other storage systems.
  proposal: /assets/pdf/Fellow-Jayjeet-Chakraborty-Proposal-2.pdf
  mentors:
    - Carlos Maltzahn (UC Santa Cruz)
    - Ivo Jimenez  (UC Santa Cruz)
    - Jeff LeFevre (UC Santa Cruz)

presentations:
  - title: "Reproducible and Scalable Experiments with SkyhookDM Ceph"
    date: 2020-10-05
    url: https://indico.cern.ch/event/946431/contributions/3976995/attachments/2114858/3558114/Jayjeet_IRIS-HEP_Presentation.pdf
    meeting: IRIS-HEP Topical Meetings
    meetingurl: https://indico.cern.ch/event/946431/
    recordingurl: https://www.youtube.com/watch?v=6gCp1BwQHdg
    focus-area: doma

current_status: >
  As of Fall 2021, Jayjeet is beginning graduate studies in Computer Science at the University of California, Santa Cruz.
---
