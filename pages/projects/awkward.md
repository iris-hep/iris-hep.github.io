---
permalink: /projects/awkward.html
layout: project
title: Awkward Array
shortname: awkward
pagetype: project
image: logos/awkward.svg
logowidth: 70%
blurb: Manipulate arrays of complex data structures
focus-area: as
team:
- jpivarski
---

[awkward-array](https://github.com/scikit-hep/awkward-array)
is a pure Python+Numpy library for manipulating complex data structures as you would Numpy arrays. Even if your data structures

* contain variable-length lists (jagged or ragged),
* are deeply nested (record structure),
* have different data types in the same list (heterogeneous),
* are masked, bit-masked, or index-mapped (nullable),
* contain cross-references or even cyclic references,
* need to be Python class instances on demand,
* are not defined at every point (sparse),
* are not contiguous in memory,
* should not be loaded into memory all at once (lazy),

this library can access them with the efficiency of Numpy arrays. They may be converted from JSON or Python data, loaded from "awkd" files, HDF5, Parquet, or ROOT files, or they may be views into memory buffers like Arrow.





