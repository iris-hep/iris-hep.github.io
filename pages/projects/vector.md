---
permalink: /projects/vector.html
layout: project
title: Vector
shortname: vector
pagetype: project
image: logos/vector-logo.png
logowidth: 70%
blurb: Manipulate vectors
maturity: Deployed
maturity-note:
github: https://github.com/scikit-hep/vector
start-date: 2018-07-08
focus-area: as
team:
- jpivarski
- henryiii
---

[Vector](https://github.com/scikit-hep/vector)
is a Python 3.7+ library for 2D, 3D, and [Lorentz vectors](https://en.wikipedia.org/wiki/Special_relativity#Physics_in_spacetime), especially _arrays of vectors_, to solve common physics problems in a NumPy-like way.

Main features of Vector:

   * Pure Python with NumPy as its only dependency. This makes it easier to install.
   * Vectors may be represented in a variety of coordinate systems: Cartesian, cylindrical, spherical, and any combination of these with time or proper time for Lorentz vectors. In all, there are 12 coordinate systems: {_x_-_y_ vs _ρ_-_φ_ in the azimuthal plane} × {_z_ vs _θ_ vs _η_ longitudinally} × {_t_ vs _τ_ temporally}.
   * Uses names and conventions set by [ROOT](https://root.cern/)'s [TLorentzVector](https://root.cern.ch/doc/master/classTLorentzVector.html) and [Math::LorentzVector](https://root.cern.ch/doc/master/classROOT_1_1Math_1_1LorentzVector.html), as well as [scikit-hep/math](https://github.com/scikit-hep/scikit-hep/tree/master/skhep/math), [uproot-methods TLorentzVector](https://github.com/scikit-hep/uproot3-methods/blob/master/uproot3_methods/classes/TLorentzVector.py), [henryiii/hepvector](https://github.com/henryiii/hepvector), and [coffea.nanoevents.methods.vector](https://coffeateam.github.io/coffea/modules/coffea.nanoevents.methods.vector.html).
   * Implemented on a variety of backends:
      - pure Python objects
      - NumPy arrays of vectors (as a [structured array](https://numpy.org/doc/stable/user/basics.rec.html) subclass)
      - [Awkward Arrays](https://awkward-array.org/) of vectors
      - potential for more: CuPy, TensorFlow, Torch, JAX...
   * NumPy/Awkward backends also implemented in [Numba](https://numba.pydata.org/) for JIT-compiled calculations on vectors.
   * Distinction between geometrical vectors, which have a minimum of attribute and method names, and vectors representing momentum, which have synonyms like `pt` = `rho`, `energy` = `t`, `mass` = `tau`.
