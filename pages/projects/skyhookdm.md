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
- "[Esmaeil Mirvakili](mailto:smirvaki@ucsc.edu)" # esmaeil-mirvakili
- JayjeetAtGithub
- xweichu
- carlosmalt
---

## Overview

[SkyhookDM](http://skyhookdm.com) is an extension of Ceph for the scalable storage of tables and for offloading common data management operations on them, including selection, projection, aggregation, and indexing, as well as user-defined functions. The goal of SkyhookDM is to transparently scale out data management operations across many storage servers leveraging the scale-out and availability properties of Ceph while significantly reducing the use of CPU cycles and interconnect bandwidth for unnecessary data transfers. The SkyhookDM architecture is also designed to transparently optimize for future storage devices of increasing heterogeneity and specialization. All the data movements from the Ceph OSDs to the client happen in [Apache Arrow](https://arrow.apache.org/) format.

SkyhookDM is currently an incubator project at the [Center for Research on Open Source Software](https://cross.ucsc.edu) at the [University of California Santa Cruz](https://ucsc.edu).

## Salient Features

* Enables pushing down filters, projections, compute operations to the Storage backend for minimal data transfer over the network and linear scalability.

* Allows storing data in Parquet files for minimizing Disk I/O though predicate and projection pushdown.

* Allows writing files to a POSIX filesystem interface.

* Minimal deployment overhead either via Rook or Ceph-Deploy.

* Plugs-in seamlessly into the Arrow Dataset API and leverages all its functionality like dataset discovering, partition pruning, etc.

* Built on top of latest Ceph v15.2.x.

## Architecture
![SkyhookDM Architecture](/assets/images/skyhook-arch.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}

In the storage layer, we extend the Ceph Object Store with plugins built using the Object Class SDK to allow scanning objects containing Parquet data inside the Ceph OSDs. We utilize the Apache Arrow framework for building the data processing logic in the plugins. On the client side, we extend CephFS with a [DirectObjectAccess](https://github.com/uccross/arrow/blob/rados-dataset-dev/cpp/src/arrow/dataset/file_rados_parquet.h#L98) API that allows invoking Object Class methods on RADOS objects to perform query operations. We export our implementation by creating a new [FileFormat](https://github.com/uccross/arrow/blob/rados-dataset-dev/cpp/src/arrow/dataset/file_base.h#L120) in Apache Arrow called [RadosParquetFileFormat](https://github.com/uccross/arrow/blob/rados-dataset-dev/cpp/src/arrow/dataset/file_rados_parquet.cc#L77) that uses the DirectObjectAcess API to offload Parquet file scanning to the storage layer.

# Performance Evaluation
![performance](/assets/images/skyhook-lat.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}

We compare the query latencies of filtering a 1.2 billion row dataset via Parquet and RadosParquet file formats with 1%, 10%, and 100% row selectivities. As shown in the above plot, Parquet performance doesn't improve on scaling out from 4 to 16 nodes as it stays bottlenecked on the client's CPUs. On the other hand, performance of RadosParquet improves as it can distibute CPU consumption amongst the storage nodes and can scale out almost linearly.

![pq](/assets/images/skyhook-grafana-pq.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}
![rpq](/assets/images/skyhook-grafana-rpq.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}

The above two plots shows how Parquet (top) stays bottlenecked on the client CPU while Rados Parquet (bottom) distributes CPU usage between the storage nodes and allows scale out.

# Ongoing Work

* Integrating SkyhookDM with [Coffea](https://coffeateam.github.io/coffea/) to offload Nanoevents processing to the storage layer for faster analysis.
![skyhook-coffea](/assets/images/skyhook-coffea.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}

* A middleware to allow writing Parquet files containing Nanoevents from [ServiceX](https://iris-hep.org/projects/servicex.html) to SkyhookDM via CephFS.

* Preparing to upstream our `RadosParquetFileFormat` API to the Apache Arrow project.

# Important Links
* [Github repository](https://github.com/uccross/arrow).
* Getting started [instructions](https://github.com/uccross/arrow/tree/rados-dataset-dev/cpp/src/arrow/adapters/arrow-rados-cls#getting-started) and [notebook](https://github.com/uccross/arrow/blob/rados-dataset-dev/cpp/src/arrow/adapters/arrow-rados-cls/docs/demo.ipynb).
* [Code walkthrough](https://www.youtube.com/watch?v=XfJsnadp18c) video.

## Announcements
* March, 2021 - [SkyhookDM v0.1.1](https://github.com/uccross/arrow/releases/tag/v0.1.1) Released !
* February, 2021 - [SkyhookDM v0.1.0](https://github.com/uccross/arrow/releases/tag/v0.1.0) Released !
* February, 2021 - [Guide](https://github.com/uccross/arrow/blob/rados-dataset-dev/cpp/src/arrow/adapters/arrow-rados-cls/README.md) for getting started with SkyhookDM.

## Fellows
* [Jayjeet Chakraborty](/fellows/JayjeetChakraborty.html) (current)
* [Xiongfeng Song](/fellows/XiongfengSong.html) (former)
