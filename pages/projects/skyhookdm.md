---
permalink: /projects/skyhookdm.html
layout: project
title: SkyhookDM
shortname: skyhookdm
pagetype: project
image: logos/skyhookdmLogoJeff.png
logowidth: 70%
blurb: Programmable Storage for Databases and Datasets
focus-area: doma
team:
- jlefevre
- xweichu
- ivotron
- carlosmalt
---

[SkyhookDM](http://skyhookdm.com) is an extension of Ceph for the scalable storage of tables and for offloading common data management operations on them, including selection, projection, aggregation, and indexing, as well as user-defined functions. The goal of SkyhookDM is to transparently scale out data management operations across many storage servers leveraging the scale-out and availability properties of Ceph while significantly reducing the use of CPU cycles and interconnect bandwidth for unnecessary data transfers. The SkyhookDM architecture is also designed to transparently optimize for future storage devices of increasing heterogeneity and specialization.

Tables can be stored either using [Google Flatbuffers](https://www.google.com/url?q=https%3A%2F%2Fgoogle.github.io%2Fflatbuffers%2F&sa=D&sntz=1&usg=AFQjCNHjA8_BoXFtX5J6U8FtL9iWlJejMQ) (for row-based processing) or using [Apache Arrow](https://www.google.com/url?q=https%3A%2F%2Farrow.apache.org&sa=D&sntz=1&usg=AFQjCNGMQiLmoUtzjovAMPow7KvSIUXRYQ) (for column-based processing) serialization. Current SkyhookDM clients include a foreign data wrapper for PostgreSQL as well as Python clients for pandas dataframes, Apache arrow data, and SQL. 

SkyhookDM is currently an incubator project at the [Center for Research on Open Source Software](https://www.google.com/url?q=https%3A%2F%2Fcross.ucsc.edu&sa=D&sntz=1&usg=AFQjCNG9tcf5187Abp8gVmzsIgjonDWlFg) at the [University of California Santa Cruz](https://www.google.com/url?q=https%3A%2F%2Fwww.ucsc.edu&sa=D&sntz=1&usg=AFQjCNFSsD21RBpgkgvgSkWK8rIGoh5GbA).
