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

SkyhookDM is currently an incubator project at the [Center for Research on Open Source Software](https://cross.ucsc.edu) at the [University of California Santa Cruz](https://ucsc.edu).

## Architecture
![SkyhookDM Architecture](/assets/images/iris-hep-skyhook.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}

On the storage layer, we extend the Ceph Object Store with plugins built using the Object Class SDK to allow scanning objects containing Parquet data inside the Ceph OSDs. We utilize the Apache Arrow framework for building the data processing logic in the plugins. On the client side, we extend CephFS with a [DirectObjectAccess](https://github.com/uccross/arrow/blob/rados-dataset-dev/cpp/src/arrow/dataset/file_rados_parquet.h#L98) API that allows invoking Object Class methods on RADOS objects to perform query operations. We export our implementation by creating a new [FileFormat](https://github.com/uccross/arrow/blob/rados-dataset-dev/cpp/src/arrow/dataset/file_base.h#L120) in Apache Arrow called [RadosParquetFileFormat](https://github.com/uccross/arrow/blob/rados-dataset-dev/cpp/src/arrow/dataset/file_rados_parquet.cc#L77) that uses the DirectObjectAcess API to offload Parquet file scanning to the storage layer.

# Performance Evaluation
Here we compare the query latencies of scanning a 1.2 billion row dataset via Parquet and RadosParquet file formats. As we see from the plot below, Parquet performance doesn't improve on scaling out from 4 to 16 nodes as it stays bottlenecked on the client's CPUs. On the other hand, performance of RadosParquet improves as it can distibute CPU consumption amongst the storage nodes and can scale out almost linearly.

![performance](/assets/images/skyhook-latency.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}


# Important Links
* [Github repository](https://github.com/uccross/arrow).
* Getting started [instructions](https://github.com/uccross/arrow/tree/rados-dataset-dev/cpp/src/arrow/adapters/arrow-rados-cls#getting-started) and [notebook](https://github.com/uccross/arrow/blob/rados-dataset-dev/cpp/src/arrow/adapters/arrow-rados-cls/docs/demo.ipynb).
* [Code walkthrough](https://www.youtube.com/watch?v=XfJsnadp18c) video.

## Announcements
* March, 2021 - [SkyhookDM v0.1.1](https://github.com/uccross/arrow/releases/tag/v0.1.1) Released !
* February, 2021 - [SkyhookDM v0.1.0](https://github.com/uccross/arrow/releases/tag/v0.1.0) Released !
* February, 2021 - [Guide](https://github.com/uccross/arrow/blob/rados-dataset-dev/cpp/src/arrow/adapters/arrow-rados-cls/README.md) for getting started with SkyhookDM.
