---
permalink: /grand-challenges.html
layout: default
title: Grand Challenges
---

# Grand Challenges

IRIS-HEP is establishing institute-wide “Grand Challenges” to assess our progress toward the primary institute high-level goals. These challenges are meant to frame and organize many of the specific milestones and deliverables in IRIS-HEP. As these challenges will be organized together with the US LHC Operations programs, the LHC experiments and other partners, we expect some future evolution and iteration in the overall scope and timeline.

## Data Processing Grand Challenge

During a nominal year of HL-LHC data taking, ATLAS and CMS together expect to take close to one exabyte of RAW data. Both experiments intend to process each year’s worth of data as early as possible in the year after. A reasonable working assumption is thus that one exabyte of data across both experiments will have to be processed in 100 days, or roughly 10 PB/day, or 1 Tbit/sec.

The RAW data will reside on tape archives across the Tier-1s and CERN, and will get processed at Tier-1s, Tier-2s, and HPC centers. It is highly likely that the two experiments will overlap in time and at least some processing locations, e.g. the large DOE and NSF HPC centers. And it is virtually guaranteed that both will overlap on many network segments worldwide.

IRIS-HEP, together with the US LHC Operations programs, the ATLAS and CMS global collaborations, and the WLCG
arrived at a series of data challenges for the next several years (2021, 20203, 2025, 2027),
during which the capabilities and performance of the global infrastructure will be slowly scaled out to reach HL-LHC requirements.
This includes three levels of challenges that interleave and build on each other.
First, there will be functionality evaluations during which new functionality of various infrastructure software products are tested.
Second are scalability challenges of such individual products,
and third, global production challenges in alternate years during which the production systems are exercised at increasing scale.
The first two types of challenges feed into the third as new products providing new functionality, or scale,
enter the production systems over time.
IRIS-HEP is engaged in these challenges at all levels via projects in multiple of its focus areas.

## Analysis Grand Challenge

The large increase in data volume at the HL-LHC requires rethinking how physicists interact with the data when developing and performing analysis. In addition to raw throughput, it is critical that analysis systems are flexible, easy to use, and have low latency to facilitate the design stages. The Analysis Grand Challenge was designed to span the scope of Analysis Systems focus area, transverse a vertical slice through the tools being developed by the Analysis Systems focus area, and increase intra-Institute connections with DOMA and SSL. The goal is to demonstrate that the analysis system can not only cope with the increased data volume, but can also deliver enhanced functionality compared to the analysis systems used at the LHC today. The challenge is formulated as a user story with assumptions, and acceptance criteria.

The Analysis Grand Challenge includes both integration of software components for analyzing the data as well as the deployment of the analysis software at analysis facilities. The vertical slice implements the functionality needed for a prototypical analysis use case with a moderately complex analysis with multiple event selection requirements, observables to be histogrammed, and systematic uncertainties that must be taken into account. The image below gives an overview of the software tools that must be integrated for this vertical slice.

{% include figure.html
  alt="Analysis Systems Scope"
  file="assets/images/cabinetry-vertical-slice.png"
  class="center"
  figure-style="width:100%"
%}


In addition, the challenge incorporates enhanced functionality relative to the  the analysis systems used at the LHC today
- End-to-end analysis optimization including systematics on a realistically sized HL-LHC (∼200 TB) end-user analysis dataset
- Analysis Preservation & Reinterpretation: The ability to preserve the optimized analysis (in git repositories, docker images, workflow components, etc.), reproduce results, and reinterpret the analysis with a new signal hypothesis.


The inclusion of differentiable programming, a relatively new concept in HEP, into the challenge carries some risks. We note however that it has the potential to move the field forward in several important ways:

- Intellectual Leadership: It is a modern paradigm growing and abstracting from the success of deep learning, and a more natural fit to HEP than replacing everything with machine learning.
- Increased Functionality: We will have more sensitive analyses. Differentiable analysis systems
would accelerate and improve essentially all fitting / tuning / optimization tasks. It also facilitates propagation of uncertainty in a more powerful way and paves the way to hybrid systems that fuse traditional approaches and machine learning more seamlessly.
- Connection with Industry: This has been an effective conduit to connections with Google (Jax and Tensorflow teams) and the pytorch community.
- Foster Innovation: Differentiable programming opens up a new range of possibilities for performing analysis in physics at the HL-LHC.
- Training & Workforce development: Young people entering the job market with Machine Learning and Differentiable Programming skills will have a unique and valuable skill set. Differentiable programming will force physicists to take an end-to-end approach to problem solving, a skill that is already looked for both within and outside HEP.

This challenge involves milestones and deliverables in DOMA, Analysis Systems, and SSL. Year 3 will include a Blueprint and other meetings focused on scoping of the target analysis, the needed capabilities of an analysis system, and roadmaps for how the components will interact. Year 4 will include initial benchmarking of analysis system components and integrations, and we aim to execute the analysis grand challenge in Year 5.


The video below provides an overview of the tools being developed by the Analysis Systems focus area, the deployment of those tools on analysis facilities, and the integration of these efforts in the context of the Analysis Grand Challenge.

<iframe width="560" height="315" src="https://www.youtube.com/embed/nDpk0tYOVlc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<!-- NOT WANTING TO DELETE THIS YET
**User Story**: “The analyzer wants to optimize an analysis end-to-end for a targeted signal hypothesis (including systematics) on an HL-LHC sized dataset so that they can obtain sensitive observed results for that signal while still being able to later reinterpret the analysis for various signal hypotheses.”

### Assumptions

- The analyzer has 200 TB for background MC samples, a specific signal hypothesis to target for optimization, a placeholder for “observed data”, and multiple signal scenarios suitable for reinterpretation.
- The analyzer has a moderately complex LHC analysis with multiple selection regions, cuts, and variables to be histogrammed for input to a template analysis tool like that of pyhf.
- The analyzer has access to an analysis facility with ServiceX and SkyHook and 1500 cores. The number of cores estimate is based on the requirement of being able to do a full iteration of the analysis in 25 minutes: if each core can process @ 50 kHz each this gives 75MHz which would process 100B events @ 2kB/event (=200 TB) in 25 min. To optimize the result multiple iterations will have to be performed.

### Acceptance Criteria

- End-to-end analysis optimization including systematics on a realistically sized HL-LHC (∼200 TB) end-user analysis dataset + observed limit & reinterpretation afterburner
- End-to-end starts with the hand-off from DOMA via ServiceX and SkyHook. Specifications of regions, variables, and systematic variations declared using cabinetry and func adl. Use of ServiceX, SkyHook, Coffea to perform event selection and deliver histograms for the pyhf model.
12
- Optimize analysis by using automatic differentiation to compute the gradient of the optimization target (e.g. analysis sensitivity) with respect to the analysis parameters, which are back-propagated from from output of statistics tool, through pyhf running in fitting service, back to ServiceX running at analysis facility, and through the event selection and histogramming code.
- Once optimized and final analysis parameters are set, apply the analysis to “observed data” (may also be synthetic in reality) to obtain “observed limits”.
- End-to-end analysis optimization and results can be achieved in 24-72 hours with an analysis facility that has the anticipated HL-LHC capabilities
- Analysis Preservation & RECASTing: Preserve the optimized analysis (in git repositories, docker images, workflow components, etc.) and reproduce results and reinterpret the analysis with a new signal hypothesis.


-->
