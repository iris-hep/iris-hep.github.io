---
permalink: /projects/func-adl.html
layout: project
title: Functional ADL
shortname: func-adl
pagetype: project
image: logos/Iris-hep-5-just-graphic.png
blurb: Functional Analysis Description Language
focus-area: as
team:
 - gordonwatts
 - etorro (left the project)
 - masonproffitt
---

`func-adl` is an implementation of a functional analysis description language that is declarative. The project is exploring several different aspects of this:

- The separation between a query language and a complete analysis
- Can a query be reduced to a single abstract syntax tree or DAG computational graph
- Can multiple user-interface languages use the same backend?
- Given that physics is usually to be evaluated in a per event basis, can the user analysis be written in such a way that the user thinks only about single event quantities even though the manipulation is done in a columnar way?
- Can a common query language be used to run on different data formats (binary experimental format, flat ROOT TTree's, and awkward array columnar analysis)

Repositories connected with this work:

- [![GitHub](https://img.shields.io/badge/GitHub-555555.svg)](https://github.com/iris-hep/func_adl) - The base package for the `func_adl` SQL-like data query language.
- [![GitHub](https://img.shields.io/badge/GitHub-555555.svg)](https://github.com/iris-hep/func_adl_xAOD) - Backend that works with ATLAS xAOD files to extract columnar data.
- [![GitHub](https://img.shields.io/badge/GitHub-555555.svg)](https://github.com/iris-hep/func_adl.uproot) - Backend that works with `ROOT` `TFile`'s that contain `TTree`'s.
- [![GitHub](https://img.shields.io/badge/GitHub-555555.svg)](https://github.com/iris-hep/qastle) - Interchange language that converts `func_adl` to a text language suitable for transmission over the web. While list-like and plain-text, it is meant as an interchange format, not an end-user language.

This work is based on the original work done with LINQ in the C# programming language (prior to the start or IRIS-HEP):

- [Developing a Declarative Analysis Language: LINQToROOT](https://indico.cern.ch/event/587955/contributions/2952520/) - Given CHEP 2018
- [Experiments Toward a Modern Analysis Environment: Using TMVA and other tools in a functional world with continuous integration for analysis](https://indico.cern.ch/event/505613/contributions/2259550/) - Given CHEP 2017

