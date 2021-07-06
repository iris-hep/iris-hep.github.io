---
permalink: /projects/hep-tables.html
layout: project
title: HEP Tables
shortname: hep-tables
pagetype: project
image: logos/Iris-hep-5-just-graphic.png
blurb: Heterogenous Distributed Array Programming Environment
focus-area: as
team:
 - gordonwatts
---

`hep-tables` presents the physicist with a uniform interface for data query and histogramming. It coordinates access to services from data delivery to local distributed clusters, removing the need for the user to code this boiler and interface code.

- Data is fetched from [`ServiceX`](https://iris-hep.org/projects/servicex.html)
- That data is processed by [`coffea`](https://pypi.org/project/coffea/) and similar tools using [`awkward`](https://iris-hep.org/projects/awkward.html) array.
- The data arriving back from [`ServiceX`](https://iris-hep.org/projects/servicex.html) is distributed to DASK for faster processing.
- Fits into the same ecosystem that tools like [`pyhf`](https://iris-hep.org/projects/pyhf.html) and (`cabinetry`)[https://iris-hep.org/projects/cabinetry.html] inhabit.

Further, it does this with a fairly straightforward array-like syntax:

- Initial dataset to histogram are specified in a coherent and unified way.
- Syntax is inspired by `pandas` and `numpy` array syntax.
- Supports awkward array usage as well. Awkward array is the standard language for manipulating

## Features

- Basic array processing features
- Lambda variable capture to allow for multi-object relationships
- Basic histogramming
- Uses ServiceX and [`awkward`](https://iris-hep.org/projects/awkward.html) and [`coffea`](https://pypi.org/project/coffea/) as back ends

## Road map

It is best to check the repositories mentioned above for the most recent status. But some future projects

- Integration of [`coffea`](https://pypi.org/project/coffea/) as a backend processor to default to multi-CPU/processor work.
- Ability to run `numba` (or `numba`-like) code
- Ability to run C++ code
- Running in a facility with the user having a very simple light-weight python front-end package.
- Add [`skyhook`](https://iris-hep.org/projects/skyhookdm.html) as a backend for caching and fast processing close to the data.

## Status

At the moment this is a prototype package. It's development is being driven by the requirements of an analysis in ATLAS. The first version has been implemented, and we are now taking a step back to understand how best to drive this work forward.

## Repositories and links

- [Some initial documentation](https://gordonwatts.github.io/hep_tables_docs) exists in the form of a tour to show off what it can do.
- Three packages make up this project currently:
  1. [dataframe_expressions](https://github.com/gordonwatts/dataframe_expressions) - User facing API, converts array expressions into AST's. Other packages then interpret this in order to execute or act on the user's desire. Includes support for leaf referencing, slicing, lambda functions, and `numpy` integration.
  2. [hep_tables](https://github.com/gordonwatts/hep_tables) - Interprets a `dataframe` expression and converts it to [`func_adl`](https://iris-hep.org/projects/func-adl.html) to be executed on a `ServiceXDatasetSource`. It can only interpret as much as what [`func_adl`](https://iris-hep.org/projects/func-adl.html) (or [ServiceX](https://iris-hep.org/projects/servicex.html) can do: return data from the service.
  3. [hl_tables](https://github.com/gordonwatts/hl_tables) - Plug-in architecture allows multiple back-ends for execution. Currently supports `hep_tables` to run data fetch and basic queries and also an immediate `awkward` array processor. The array processor can generate histograms among other things.
- The three packages are being changed such that `hep_tables` will be the high level package, `hl_tables` will be retired, and plug-ins will be build in separate repositories.
