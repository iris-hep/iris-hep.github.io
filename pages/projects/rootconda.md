---
permalink: /projects/rootconda.html
layout: project
title: ROOT on Conda Forge
shortname: rootconda
pagetype: project
image: logos/Iris-hep-5-just-graphic.png
blurb: Use ROOT in Conda through Conda-Forge
focus-area: as
team:
- henryiii
- Chris Burr
- Enrico Guiraud
- Javier Cervantes Villanueva

---

[ROOT on Conda-Forge][root-feedstock] is now available!

For High Energy Physics, the go-to framework for big data analysis has been CERN's [ROOT][] framework. ROOT is a massive C++ library that even predates the STL in some areas. It is[^1] *also* a JIT C++ interpreter called Cling, probably the best in the business. If you have [heard of](https://andersy005.github.io/blog/2018/01/20/play-interactively-with-cpp-getting-started-with-xeus-cling/) the [Xeus][] C++ Kernel for Jupyter, that is built on top of Cling. ROOT has everything a HEP physicist could want: math, plotting, histograms, tuple and tree structures, a very powerful file format for IO, machine learning, Python bindings, and more. It also does things like dictionary generation and arbitrary class serialization (other large frameworks like [Qt][] have similar generation tools).

You may already be guessing one of the most common problems for ROOT. It is huge and difficult to install -- if you build from source, that's a several hour task on a single core. It has gotten much better in the last 5 years, and there are several places you can find ROOT, but there are still areas where it is challenging. This is especially true for Python; ROOT is linked to just one version of Python, and the one you get with pre-built ROOT can often be the wrong one. And, if you use the [Anaconda Python distribution][Anaconda], which is the most popular scientific distribution of Python and massively successful for ML frameworks, the general rule even for people who build ROOT themselves has been: don't. But now, you can get a fully featured ROOT binary package for macOS or Linux, Python 2.7, 3.6, or 3.7, from [Conda-Forge][], the most popular Anacanda community channel!

[^1]: Technically, it contains Cling, but Cling is what runs when you run the `root` command.

[ROOT]:           https://root.cern
[Xeus]:           https://github.com/QuantStack/xeus-cling
[Qt]:             https://qt.io
[Anaconda]:       https://www.anaconda.com/distribution/
[root-feedstock]: https://github.com/conda-forge/root-feedstock
[Conda-Forge]:    https://conda-forge.org



