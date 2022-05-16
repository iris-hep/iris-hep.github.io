---
permalink: /projects/uproot.html
layout: project
title: uproot
shortname: uproot
pagetype: project
image: logos/uproot.svg
logowidth: 70%
blurb: Read and write ROOT files in Python
maturity: Deployed
maturity-note:
focus-area: as
github: https://github.com/scikit-hep/uproot4
start-date: 2017-09-03
team:
- jpivarski
- Pratyush Das
---

[uproot](https://github.com/scikit-hep/uproot4)
(originally μproot, for "micro-Python ROOT") is a reader and a writer of the ROOT file format using only Python and NumPy. Unlike the standard C++ ROOT implementation, uproot is only an I/O library, primarily intended to stream data into machine learning libraries in Python. Unlike PyROOT and root_numpy, uproot does not depend on C++ ROOT. Instead, it uses NumPy to cast blocks of data from the ROOT file as NumPy arrays.
