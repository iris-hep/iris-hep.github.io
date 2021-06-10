---
permalink: /fellows/BaidyanathKundu.html
layout: fellow
pagetype: fellow
active: true
title: Baidyanath Kundu - IRIS-HEP Fellow
fellow-name: Baidyanath Kundu
shortname: Baidyanath
project_title: Reading CMS Run 1/2 miniAOD files with ServiceX and func_adl
focus-area:
dates:
  start: 2021-02-01
  end: 2021-04-30
photo: /assets/images/team/Baidyanath-Kundu.png
institution: Manipal Institute of Technology
website:
e-mail: kundubaidya99@gmail.com
mentors:
  - Gordon Watts (University of Washington)
project_goal: >
    ServiceX is a distributed, cloud-native application that extracts columnar data from HEP event data and delivers it to an analyst. The func_adl data query language is used to tell ServiceX how to extract the data (what columns, what simple cuts, etc.). The func_adl data query language has two backends that are currently part of ServiceX - one based on C++ for ATLAS data and one based on columnar processing using uproot and awkward arrays. The C++ backend currently runs only on the ATLAS binary format, xAOD. The C++ is generated in python. This project will modify the C++ backend to also run on CMS Mini-AOD binary files (Run 1/Run 2), starting by concentrating on Run 1. The Higgs-Discovery demo will be used as a guide.
proposal: /assets/pdf/BaidyanathKundu_Proposal.pdf
presentations:
---