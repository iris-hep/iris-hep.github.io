---
permalink: /projects/skyhookdm.html
layout: project
title: SkyhookDM
shortname: skyhookdm
pagetype: project
image: logos/skyhookdmLogoJeff.png
logowidth: 20%
blurb: Programmable Storage for Databases and Datasets
focus-area: doma
team:
- jlefevre
- ivotron
- esmaeil-mirvakili
- JayjeetAtGithub
- xweichu
- carlosmalt
---

[SkyhookDM](http://skyhookdm.com) is an extension of Ceph for the scalable storage of tables and for offloading common data management operations on them, including selection, projection, aggregation, and indexing, as well as user-defined functions. The goal of SkyhookDM is to transparently scale out data management operations across many storage servers leveraging the scale-out and availability properties of Ceph while significantly reducing the use of CPU cycles and interconnect bandwidth for unnecessary data transfers. The SkyhookDM architecture is also designed to transparently optimize for future storage devices of increasing heterogeneity and specialization.

Tables are stored using [Apache Arrow](https://www.google.com/url?q=https%3A%2F%2Farrow.apache.org&sa=D&sntz=1&usg=AFQjCNGMQiLmoUtzjovAMPow7KvSIUXRYQ) (for column-based processing) serialization. The SkyhookDM client developed for HEP exposes the [Arrow Dataset API](https://arrow.apache.org/docs/python/dataset.html) with a new Dataset class called `RadosDataset`. This extension is intended to become part of Apache Arrow. Other SkyhookDM clients include a foreign data wrapper for PostgreSQL as well as Python clients for SQL.

SkyhookDM is currently an incubator project at the [Center for Research on Open Source Software](https://www.google.com/url?q=https%3A%2F%2Fcross.ucsc.edu&sa=D&sntz=1&usg=AFQjCNG9tcf5187Abp8gVmzsIgjonDWlFg) at the [University of California Santa Cruz](https://www.google.com/url?q=https%3A%2F%2Fwww.ucsc.edu&sa=D&sntz=1&usg=AFQjCNFSsD21RBpgkgvgSkWK8rIGoh5GbA).
