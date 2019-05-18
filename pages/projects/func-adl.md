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

`func-adl` is an implementation of a functional analysis description language that is declarative. The project is exploring several different aspects of this:

- The separation between a query language and a complete analysis
- Can a query be reduced to a single abstract syntax tree or DAG computational graph
- Can multiple user-interface languages use the same backend?
- Can the user analysis be written in such a way that the user thinks only about single event quantities?
- Can a common query language be used to run on different data formats (binary experimental format, flat ROOT TTree's, and awkward array columnar analysis)

Repositories connected with this work:

- [![GitHub](https://img.shields.io/badge/GitHub-555555.svg)](https://github.com/gordonwatts/BDTTrainingAnalysisLanguage) - The original exploration for this work was done here
- [![GitHub](https://img.shields.io/badge/GitHub-555555.svg)](https://github.com/gordonwatts/functional_adl) - A client (to be included in the user's analysis) and a backend that runs the queries.

This work is based on the original work done with LINQ in the C# programming language (prior to the start or IRIS-HEP):

- [Developing a Declarative Analysis Language: LINQToROOT](https://indico.cern.ch/event/587955/contributions/2952520/) - Given CHEP 2018
- [Experiments Toward a Modern Analysis Environment: Using TMVA and other tools in a functional world with continuous integration for analysis](https://indico.cern.ch/event/505613/contributions/2259550/) - Given CHEP 2017

{% include list_project_team.md team=page.team%}

{% include list_project_presentations.md shortname=page.shortname %}

{% include list_project_publications.md shortname=page.shortname %}
