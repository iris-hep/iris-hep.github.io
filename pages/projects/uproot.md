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
- henryiii
- Angus Hollands
- Pratyush Das
- Kush Kothari
- Aryan Roy
- Jerry Ling
- ncsmith
- Chris Burr
- Giordon Stark
- ioifrim
---

[Uproot](https://github.com/scikit-hep/uproot5) is a library for reading and writing ROOT files in pure Python and NumPy.

Unlike the standard C++ ROOT implementation, Uproot is only an I/O library, primarily intended to stream data into machine learning libraries in Python. Unlike PyROOT and root_numpy, Uproot does not depend on C++ ROOT. Instead, it uses Numpy to cast blocks of data from the ROOT file as Numpy arrays.
