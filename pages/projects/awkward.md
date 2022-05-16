---
permalink: /projects/awkward.html
layout: project
title: Awkward Array
shortname: awkward
pagetype: project
image: logos/awkward.svg
logowidth: 70%
blurb: Manipulate arrays of complex data structures
maturity: Deployed
maturity-note:
focus-area: as
github: https://github.com/scikit-hep/awkward
start-date: 2018-06-10
team:
- jpivarski
---

[awkward-array](https://github.com/scikit-hep/awkward-1.0)
is a pure Python+NumPy library for manipulating complex data structures as you would NumPy arrays. Even if your data structures

* contain variable-length lists (jagged or ragged),
* are deeply nested (record structure),
* have different data types in the same list (heterogeneous),
* are masked, bit-masked, or index-mapped (nullable),
* contain cross-references or even cyclic references,
* need to be Python class instances on demand,
* are not defined at every point (sparse),
* are not contiguous in memory,
* should not be loaded into memory all at once (lazy),

this library can access them with the efficiency of NumPy arrays. They may be converted from JSON or Python data, loaded from "awkd" files, HDF5, Parquet, or ROOT files, or they may be views into memory buffers like Arrow.
