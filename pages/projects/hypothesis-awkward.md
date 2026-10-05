---
permalink: /projects/hypothesis-awkward.html
layout: project
title: Hypothesis-awkward
shortname: hypothesis-awkward
pagetype: project
image: logos/Iris-hep-5-just-graphic.png
blurb: Property-based testing strategies for Awkward Array
maturity: Testing
maturity-note:
focus-area: as
github: https://github.com/scikit-hep/hypothesis-awkward
start-date: 2025-10-18
team:
- TaiSakuma
---

[Hypothesis-awkward](https://github.com/scikit-hep/hypothesis-awkward) is a Python package that extends [Hypothesis](https://github.com/HypothesisWorks/hypothesis) with strategies for [Awkward Array](awkward). Awkward Array can represent a wide variety of nested, variable-length, mixed-type data. The unit tests of many tools that process Awkward Arrays use predefined input samples, which cover only a small part of all possible arrays. Hypothesis, a property-based testing library for Python, generates test data and automatically explores edge cases that can make tests fail. Hypothesis-awkward makes the tests of Awkward Array and of the tools that use it more reliable.

[Documentation](https://scikit-hep.org/hypothesis-awkward/) · [PyPI](https://pypi.org/project/hypothesis-awkward) · [conda-forge](https://anaconda.org/conda-forge/hypothesis-awkward)
