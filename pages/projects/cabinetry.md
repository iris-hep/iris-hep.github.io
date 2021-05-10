---
permalink: /projects/cabinetry.html
layout: project
title: cabinetry
shortname: cabinetry
pagetype: project
image: logos/cabinetry.png
logowidth: 35%
blurb: Building and steering template fits
focus-area: as
team:
 - cranmer
 - alexander-held
---

[![CI status](https://github.com/alexander-held/cabinetry/workflows/CI/badge.svg)](https://github.com/alexander-held/cabinetry/actions?query=workflow%3ACI)
[![Documentation Status](https://readthedocs.org/projects/cabinetry/badge/?version=latest)](https://cabinetry.readthedocs.io/en/latest/?badge=latest)
[![codecov](https://codecov.io/gh/alexander-held/cabinetry/branch/master/graph/badge.svg)](https://codecov.io/gh/alexander-held/cabinetry)
[![PyPI version](https://badge.fury.io/py/cabinetry.svg)](https://badge.fury.io/py/cabinetry)
[![python version](https://img.shields.io/pypi/pyversions/cabinetry.svg)](https://pypi.org/project/cabinetry/)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)

[`cabinetry`](https://github.com/alexander-held/cabinetry) is a Python package to build and steer (profile likelihood) template fits.
It interfaces libraries developed within IRIS-HEP and the wider HEP Python ecosystem to make it easier for an analyzer to run their statistical inference pipeline.
The code can be found on [![GitHub](https://img.shields.io/badge/GitHub-555555.svg)](https://github.com/alexander-held/cabinetry), while [documentation is provided on readthedocs](https://cabinetry.readthedocs.io/).
An [example notebook runs through Binder](https://mybinder.org/v2/gh/cabinetry/cabinetry-tutorials/master?filepath=example.ipynb) to see `cabinetry` in action.

Many analyses at the LHC use the `ROOT` implementation of [HistFactory](https://cds.cern.ch/record/1456844) or the newer pythonic implementation [pyhf](pyhf) to construct their statistical model.
These models are built from template histograms.
It is the responsibility of the analyzers to define the event selection and variables of interest to fill the multitude of histograms required, including various systematic variations.
This task is well suited for automation, and tools like `HistFitter` and `TRExFitter` have been developed to address this need.
Those tools were designed to work with the `ROOT` implementation of HistFactory, and while they don't have a shared declarative specification, there are many commonalities.

<img width="60%" src ="/assets/images/cabinetry-schematic.png" />

The `cabinetry` effort is a point of convergence for projects in the Analysis Systems focus area, and brings together many of the tools IRIS-HEP is developing.
Analyzers can use the `cabinetry` library to construct their statistical models and to perform inference with them.
Models are built from a declarative specification, which concisely summarizes the information needed to create all required template histograms and assemble them into a statistical model.
The execution of the required steps to construct a model is steered by `cabinetry` and makes use of libraries such as [`uproot`](uproot) and [`awkward-array`](awkward).
`cabinetry` also provides functionality to perform inference and study fit results, including [common types of associated visualizations](https://github.com/iris-hep/as-user-facing/blob/master/fit-visualization.md).
Inference in `cabinetry` is performed via [pyhf](pyhf).

### `cabinetry` in the IRIS-HEP ecosystem
The following image shows the final stages of an analysis: processing of columnar data to construct a statistical model, inference, and possible re-use and preservation.
It shows examples of connections to other packages developed in IRIS-HEP and the wider ecosystem.

<img width="60%" src="/assets/images/cabinetry-vertical-slice.png" />

The [poster below](https://indico.cern.ch/event/894127/attachments/1996570/3331188/18_-_AS_Final_analysis_stages.pdf) provides another look at final stages of an analysis.
It describes the steps involved in the chain, and how they connect to other IRIS-HEP focus areas.

<img  width="60%" src="/assets/images/AS_Final_analysis_stages-small.png" alt="poster" />
