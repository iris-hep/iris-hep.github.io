---
permalink: /fellows/RahulAgrawal.html
layout: fellow
pagetype: fellow
active: false
title: Rahul Agrawal - IRIS-HEP Fellow
fellow-name: Rahul Agrawal
shortname: Rahul
project_title: Facilitate continuous benchmarking/regression testing for the critical components of SkyhookDM
focus-area:
dates:
  start: 2021-06-14
  end: 2021-09-12
photo: /assets/images/team/Rahul-Agrawal.png
institution: Indian Institute of Technology, Kharagpur (IIT KGP)
website:
e-mail: rahulagrawal799110@gmail.com
mentors:
  - Jeff LeFevre (UC Santa Cruz)
  - Jayjeet Chakraborty (NIT, Durgapur)
project_goal: >
   SkyhookDM, a performance-critical distributed storage system developed by embedding Apache Arrow, is a computational storage system. Small changes in the source code's performance-critical parts will often result in significant performance changes. It's essential to keep track of these performance changes so that the project can become more performant over time and avoid silent performance deterioration.

    To overcome these challenges, the Google benchmark framework can be used to create benchmarks (very similar to unit tests) for all the performance-critical parts of the source code. These benchmarks can be added as a separate job in the CI/CD pipeline, which will get triggered when any particular events like commit/push happen. A web dashboard can also be integrated to monitor the performance results of the CI tests.

proposal: /assets/pdf/Fellow-Rahul-Agrawal_proposal.pdf
presentations:
---
