---
permalink: /projects/abcd-pyhf.html
layout: project
title: abcd-pyhf
shortname: abcd-pyhf
pagetype: project
image: logos/Iris-hep-5-just-graphic.png
blurb: Likelihood-based ABCD method with pyhf
maturity: Development
maturity-note:
github: https://github.com/masonproffitt/abcd-pyhf
start-date: 2021-11-23
focus-area: as
team:
 - masonproffitt
---

`abcd-pyhf` is an implementation of the likelihood-based version of the ABCD method that utilizes [`pyhf`](pyhf) for hypothesis testing and limit setting. The ABCD method is a common background estimation method used by many physics searches in particle collider experiments and involves defining four regions based on two uncorrelated observables. The regions are defined such that there is a search region, where most signal events are expected to be, and three control regions. The likelihood-based version of the ABCD method, also referred to as the "modified ABCD method", can be used even when there may be significant contamination of the control regions by signal events. `abcd-pyhf` is a standalone implementation that does not make any assumptions about the underlying analysis and can thus be used or adapted in any analysis using the ABCD method.

[GitHub repository](https://github.com/masonproffitt/abcd-pyhf)
