---
permalink: /projects/particle.html
layout: project
title: Particle
shortname: particle
pagetype: project
image: logos/particle.svg
logowidth: 50%
blurb: Pythonic particle information
maturity: Deployed
maturity-note:
github: https://github.com/scikit-hep/particle
start-date: 2018-11-20
focus-area: as
team:
- henryiii
- Eduardo Rodrigues (outside collaborator, University of Liverpool)
---

[Particle](https://github.com/scikit-hep/particle) provides a pythonic interface to the Particle Data Group (PDG) particle data tables and particle identification codes.

The PDG defines the standard particle identification (ID) numbering scheme. The package provides the PDGID class implementing queries on those PDG IDs. The queries are also accessible through free standing functions mimicking the HepPID C++ interface.

The Particle class wraps the information in the PDG particle data tables and provides an object-oriented interface and powerful search and look-up utilities.
