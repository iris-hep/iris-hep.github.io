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

## Overview

[SkyhookDM](http://skyhookdm.com) is an extension of Ceph for the scalable storage of tables and for offloading common data management operations on them, including selection, projection, aggregation, and indexing, as well as user-defined functions. The goal of SkyhookDM is to transparently scale out data management operations across many storage servers leveraging the scale-out and availability properties of Ceph while significantly reducing the use of CPU cycles and interconnect bandwidth for unnecessary data transfers. The SkyhookDM architecture is also designed to transparently optimize for future storage devices of increasing heterogeneity and specialization. All the data movements from the Ceph OSDs to the client happen in [Apache Arrow](https://arrow.apache.org/) format.

We extended the [Arrow Dataset API](https://arrow.apache.org/docs/python/dataset.html) with a new `FileFormat` API called `RadosParquetFileFormat` that allows pushing down scan operations to the Storage layer transparently which helps use the under utilized resources on the Storage servers and speed up query execution by moving only the data that is required over the network. This extension is intended to eventually become part of Apache Arrow. Also, other SkyhookDM clients include a foreign data wrapper for PostgreSQL as well as Python clients for SQL.

SkyhookDM is currently an incubator project at the [Center for Research on Open Source Software](https://www.google.com/url?q=https%3A%2F%2Fcross.ucsc.edu&sa=D&sntz=1&usg=AFQjCNG9tcf5187Abp8gVmzsIgjonDWlFg) at the [University of California Santa Cruz](https://www.google.com/url?q=https%3A%2F%2Fwww.ucsc.edu&sa=D&sntz=1&usg=AFQjCNFSsD21RBpgkgvgSkWK8rIGoh5GbA).

## Architecture
![SkyhookDM Architecture](/assets/images/iris-hep-skyhook.png){:style="display:block; margin-left: auto; margin-right: auto; width: 85%"}

# Performance

SkyhookDM offloads CPU from the Client to the Storage layer and results in better parallelism and scalability.

## Announcements
* March, 2021 - [SkyhookDM v0.1.1](https://github.com/uccross/arrow/releases/tag/v0.1.1) Released !
* February, 2021 - [SkyhookDM v0.1.0](https://github.com/uccross/arrow/releases/tag/v0.1.0) Released !
* February, 2021 - [Guide](https://github.com/uccross/arrow/blob/rados-dataset-dev/cpp/src/arrow/adapters/arrow-rados-cls/README.md) for getting started with SkyhookDM.

