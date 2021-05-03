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
 - etorro
 - masonproffitt
---

`func-adl` is an implementation based upon the [C#'s Language Integrated Query](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/concepts/linq/) (LINQ) feature. `func-adl` allows the physicist to declare, using a functional syntax, a query against particle physics data (or any structured data). It is based around streams of objects, be they events, jets, tracks, or electrons. A single event is expressed as a database, of sorts, and a stream of the events is processed.

The language is built to be data-format agnostic. There are projects to translate `func-adl` into C++ to run against ATLAS xAOD's and CMS Run 1 AOD's, and any flat ROOT TTree.

## Status

This project is released in production for [ServiceX](https://iris-hep.org/projects/servicex.html). It works with the ATLAS `xAOD` and CMS Run 1 AOD (experiment-specific custom formats) and flat ROOT TTree files (using the [`uproot`](https://iris-hep.org/projects/uproot.html) and [`awkward`](https://iris-hep.org/projects/awkward.html) ecosystem).

## GitHub Repositories

Repositories connected with this work:

- [func_adl](https://github.com/iris-hep/func_adl) - The base package for the `func_adl` SQL-like data query language.
- [func_adl_xAOD](https://github.com/iris-hep/func_adl_xAOD) - Backend that works with ATLAS xAOD files to extract columnar data.
- [func_adl_uproot](https://github.com/iris-hep/func_adl.uproot) - Backend that works with `ROOT` `TFile`'s that contain `TTree`'s.
- [func_adl_servicex](https://github.com/iris-hep/func_adl_servicex) - Front end that seamlessly connects `func-adl` and the `ServiceX` backend.
- [qastle](https://github.com/iris-hep/qastle) - Interchange language that converts `func_adl` to a text language suitable for transmission over the web. While list-like and plain-text, it is meant as an interchange format, not an end-user language.

This work is based on the original work done with LINQ in the C# programming language (prior to the start or IRIS-HEP):

- [Developing a Declarative Analysis Language: LINQToROOT](https://indico.cern.ch/event/587955/contributions/2952520/) - Given CHEP 2018
- [Experiments Toward a Modern Analysis Environment: Using TMVA and other tools in a functional world with continuous integration for analysis](https://indico.cern.ch/event/505613/contributions/2259550/) - Given CHEP 2017
