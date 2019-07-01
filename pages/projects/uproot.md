---
permalink: /projects/uproot.html
layout: project
title: uproot
shortname: uproot
pagetype: project
image: logos/uproot.svg
logowidth: 70%
blurb: Read ROOT files in Python
focus-area: as
team:
- jpivarski
---

[uproot](https:github.com/scikit-hep/uproot)
(originally μproot, for "micro-Python ROOT") is a reader and a writer of the ROOT file format using only Python and Numpy. Unlike the standard C++ ROOT implementation, uproot is only an I/O library, primarily intended to stream data into machine learning libraries in Python. Unlike PyROOT and root_numpy, uproot does not depend on C++ ROOT. Instead, it uses Numpy to cast blocks of data from the ROOT file as Numpy arrays.

Python does not necessarily mean slow. As long as the data blocks ("baskets") are large, this "array at a time" approach can even be faster than "event at a time" C++. Below, the rate of reading data into arrays with uproot is shown to be faster than C++ ROOT (left) and root_numpy (right), as long as the baskets are tens of kilobytes or larger (for a variable number of muons per event in an ensemble of different physics samples; higher is better).


