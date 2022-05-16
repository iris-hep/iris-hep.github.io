---
permalink: /projects/skyhookdm.html
layout: project
title: SkyhookDM
shortname: skyhookdm
pagetype: project
image: logos/skyhookdmLogoJeff.png
logowidth: 20%
blurb: Programmable Storage for Databases and Datasets
maturity: Development
maturity-note:
start-date: 2021-02-01
focus-area: doma
team:
- jlefevre
- ivotron
- "[Esmaeil Mirvakili](mailto:smirvaki@ucsc.edu)" # esmaeil-mirvakili
- JayjeetAtGithub
- xweichu
- carlosmalt
---

# Skyhook Data Management

## Overview

HL-LHC will challenge existing storage systems with regards to both data volumes and velocity: analysis datasets will grow significantly _and_ users will
demand higher event rates to improve the time-to-insight.  The SkyHook DM project is an investment into *computational storage*, relying on the insight
that the _data organization_ of HEP files is highly structured.  The service is able to recognize the layout of files and "push down" structured queries
from client to server, taking advantage of the computational capacity in the storage hardware and reducing data movement significantly.

Combining data management with storage also creates the opportunity for new services that can help avoid dataset copies and thereby can significantly save storage space. Data management-enabled storage systems can provide views by combining parts of multiple datasets. For HEP this means that columns from one table can be combined with columns from a different table without creating copies. For this to work, these storage systems need to store sufficient metadata and naming conventions about datasets. This makes them a natural place for maintaining this metadata and servicing it to other tools in convenient formats.

Skyhook Data Management is an extension of the [Ceph open source distributed storage system](https://ceph.io/) for the scalable storage of tables and for offloading common data management operations on them, including selection, projection, aggregation, and indexing, as well as user-defined functions. The goal of SkyhookDM is to transparently scale out data management operations across many storage servers leveraging the scale-out and availability properties of Ceph while significantly reducing the use of CPU cycles and interconnect bandwidth for unnecessary data transfers. The SkyhookDM architecture is also designed to transparently optimize for future storage devices of increasing heterogeneity and specialization. All the data movements from the Ceph OSDs to the client happen in [Apache Arrow](https://arrow.apache.org/) format.

SkyhookDM is currently an incubator project at the [Center for Research on Open Source Software](https://cross.ucsc.edu) at the [University of California Santa Cruz](https://ucsc.edu).

## Salient Features

* Enables pushing down filters, projections, compute operations to the Storage backend for minimal data transfer over the network and linear scalability.

* Allows storing data in Parquet files for minimizing Disk I/O though predicate and projection pushdown.

* Allows writing files to a POSIX filesystem interface.

* Minimal deployment overhead either via Rook or Ceph-Deploy.

* Plugs-in seamlessly into the Arrow Dataset API and leverages all its functionality like dataset discovering, partition pruning, etc.

* Works with latest Apache Arrow and latest Ceph versions.

## Architecture
![SkyhookDM Architecture](/assets/images/skyhook-arch-blog.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}

In the storage layer, we extend the Ceph Object Store with plugins built using the Object Class SDK to allow scanning objects containing Parquet data inside the Ceph OSDs. We utilize the Apache Arrow framework for building the data processing logic in the plugins. On the client side, we extend CephFS with a [SkyhookDirectObjectAccess](https://github.com/apache/arrow/blob/master/cpp/src/skyhook/protocol/skyhook_protocol.h#L73) API that allows invoking Object Class methods on RADOS objects to perform query operations. We export our implementation by creating a new [FileFormat](https://github.com/apache/arrow/blob/master/cpp/src/arrow/dataset/file_base.h#L130) in Apache Arrow called [SkyhookFileFormat](https://github.com/apache/arrow/blob/master/cpp/src/skyhook/client/file_skyhook.h#L58) that uses the `SkyhookDirectObjectAcess` API to offload Parquet file scanning to the storage layer.

# Performance Evaluation
![performance](/assets/images/skyhook-lat.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}

We compare the query latencies of filtering a 1.2 billion row dataset via Parquet and Skyhook file formats with 1%, 10%, and 100% row selectivities. As shown in the above plot, Parquet performance doesn't improve on scaling out from 4 to 16 nodes as it stays bottlenecked on the client's CPUs. On the other hand, performance of Skyhook improves as it can distribute CPU consumption amongst the storage nodes and can scale out almost linearly.

![rpq](/assets/images/skyhook-cpu.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}

The above two plots shows how Parquet (top) stays bottlenecked on the client CPU while Skyhook (bottom) distributes CPU usage between the storage nodes and allows scale out.

# Ongoing Work
* Working on deploying Skyhook in the [UNL](https://coffea-opendata-dev.casa/) and [SSL](https://indico.cern.ch/event/882955/contributions/3724855/attachments/1978233/3295037/Chicago-K8S-Workshop-Jan-2020.pdf) clusters.

* Working on making the Coffea-Skyhook integration more user-friendly.

* Working on joining HEP datasets using [DuckDB](https://duckdb.org/)/[Arrow](https://arrow.apache.org)/[Fugue](https://fugue-tutorials.readthedocs.io/index.html).

* A middleware to allow writing Parquet files containing Nanoevents from [ServiceX](https://iris-hep.org/projects/servicex.html) to SkyhookDM via CephFS.

# Important Links
* [Github repository](https://github.com/apache/arrow/tree/master/cpp/src/skyhook).
* Getting started [instructions](https://skyhookdm-arrow.readthedocs.io/en/latest/getting_started.html) and [notebook](https://github.com/uccross/arrow/blob/rados-dataset-dev/cpp/src/arrow/adapters/arrow-rados-cls/docs/demo.ipynb).
* [Code walkthrough](https://www.youtube.com/watch?v=XfJsnadp18c) video.

## Announcements
* April, 2022 - Skyhook is deployed at [UNL](https://coffea-opendata-dev.casa/) and at the [SSL](https://indico.cern.ch/event/882955/contributions/3724855/attachments/1978233/3295037/Chicago-K8S-Workshop-Jan-2020.pdf) at the University of Chicago.
* March, 2022 - [Skyhook: Toward an Arrow-Native Storage System](https://drive.google.com/file/d/1rKy18AQ28tRBW6sb65Yxx2vPQna6romd/view?usp=sharing), to appear in [CCGrid 2022](https://fcrlab.unime.it/ccgrid22/).
* January, 2022 - [Skyhook: Bringing Computation to Storage with Apache Arrow](https://arrow.apache.org/blog/2022/01/31/skyhook-bringing-computation-to-storage-with-apache-arrow/)
* October, 2021 - [Skyhook is now a part of Apache Arrow !](https://medium.com/@jayjeetc/skyhookdm-is-now-a-part-of-apache-arrow-e5d7b9a810ba)
* December, 2021 - [SkyhookDM v0.4.0](https://github.com/uccross/skyhookdm-arrow/releases/tag/v0.4.0) Released !
* July, 2021 - [SkyhookDM v0.3.0](https://github.com/uccross/skyhookdm-arrow/releases/tag/v0.3.0)
* March, 2021 - [SkyhookDM v0.1.1](https://github.com/uccross/arrow/releases/tag/v0.1.1) Released !
* February, 2021 - [SkyhookDM v0.1.0](https://github.com/uccross/arrow/releases/tag/v0.1.0) Released !
* February, 2021 - [Guide](https://skyhookdm-arrow.readthedocs.io/en/latest/getting_started.html) for getting started with SkyhookDM.

## Fellows
* [Jayjeet Chakraborty](/fellows/JayjeetChakraborty.html) (current)
* [Xiongfeng Song](/fellows/XiongfengSong.html) (former)
