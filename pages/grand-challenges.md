---
permalink: /grand-challenges.html
layout: default
title: Grand Challenges
---

# Grand Challenges

IRIS-HEP is establishing institute-wide “Grand Challenges” to assess our progress toward the primary institute high-level goals. These challenges are meant to frame and organize many of the specific milestones and deliverables in IRIS-HEP. As these challenges will be organized together with the US LHC Operations programs, the LHC experiments and other partners, we expect some future evolution and iteration in the overall scope and timeline.

## Data Processing Grand Challenge

During a nominal year of HL-LHC data taking, ATLAS and CMS together expect to take roughly one exabyte of RAW data. Both experiments intend to process each year’s worth of data as early as possible in the year after. A reasonable working assumption is thus that one exabyte of data across both experiments will have to be processed in 100 days, or roughly 10 PB/day, or 1 Tbit/sec.

The RAW data will reside on tape archives across the Tier-1s and CERN, and will get processed at Tier-1s, Tier-2s, and HPC centers. It is highly likely that the two experiments will overlap in time and at least some processing locations, e.g. the large DOE and NSF HPC centers. And it is virtually guaranteed that both will overlap on many network segments worldwide.
IRIS-HEP has started a discussion with the US LHC Operations programs, the US Tier-1 centers, WLCG, ESNet, and the FABRIC networking testbed funded by the NSF, on a possible data challenge that would demonstrate the ability of the ATLAS and CMS production teams to achieve 10 PB of data processing in a single day. Ideally, such a demonstration would be end-to- end, from archives to disk buffers, to networks, to disk buffers at processing centers, to processing, and back with the results. Ideally, both experiment would run a well understood realistic but fast production workflow, e.g. AOD to MINIAOD in CMS and AOD to DAOD in ATLAS. Ideally, such a realistic challenge would be done a few years prior to the start of HL-LHC data taking to be able to react to lessons learned. An ideal schedule would thus locate such a challenge roughly 2 years after the end of the current 5 year funding of IRIS-HEP.
11

On roughly that timeline, FABRIC will be operating a Terabit/sec testbed across the USA from Washington to Chicago to Houston to San Diego. In addition, both BNL and FNAL, as well as most US LHC Tier-2 centers will be able to connect to Starlight at Chicago at an aggregate bandwidth in excess of one Terabit/sec. And the Expanse HPC system funded by NSF via the XD program will be located in the same computer room at SDSC where the FABRIC Tbit/sec supercore lands. Many investments from both NSF and DOE will thus come together to maybe make such an ideal 10 PB/day challenge feasible.

IRIS-HEP will work towards such a challenge via a mix of planning, coordination, and component testing. During Y3, we will produce a plan, socialize it with the US LHC Ops programs, the DOE labs BNL and FNAL, ESNet, FABRIC leadership, choose an appropriate (set of) processing centers, and decide on a set of component tests that can be done during Y4, as well as a smaller scale end-to-end tests that can be done in Y5. Within IRIS-HEP, this will include effort from DOMA and OSG-LHC. It is directly connected to goals W3.3, W7.2 and W7.5, and will depend on work on HTTP TPC, XRootd monitoring, and network performance activities.

## Analysis Grand Challenge

The large increase in data volume at the HL-LHC requires rethinking how physicists interact with the data when developing and performing analysis. In addition to raw throughput, latency, ease of use, and functionality are key considerations for an analysis system. The Analysis Grand Challenge was designed to involve multiple IRIS-HEP products and serve as a unifying to connect the different projects, be central to HL-LHC and IRIS-HEP goals, and span the scope of Analysis Systems and increase intra-Institute connections with DOMA and SSL. The goal is to demonstrate that the analysis system can not only cope with the increased data volume, but can also deliver enhanced functionality compared to the analysis systems used at the LHC today. The challenge is formulated as a user story with assumptions, and acceptance criteria.

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

The inclusion of differentiable programming, a relatively new concept in HEP, into the challenge carries some risks. We note however that it has the potential to move the field forward in several important ways:

- Intellectual Leadership: It is a modern paradigm growing and abstracting from success of deep learning, and a more natural fit to HEP than replacing everything with machine learning.
- Increased Functionality: We will have more sensitive analyses. Differentiable analysis systems
would accelerate and improve essentially all fitting / tuning / optimization tasks. It also facilitates propagation of uncertainty in a more powerful way and pave the way to hybrid systems that fuse traditional approaches and machine learning more seamlessly.
- Connection with Industry: This has been an effective conduit to connections with Google (Jax and Tensorflow teams) and the pytorch community.
- Foster Innovation: Differentiable programming opens up a new range of possibilities for per- forming analysis in physics an at the HL-LHC.
- Training & Workforce development: Young people entering the job market with Machine Learning and Differentiable Programming skills will have a unique and valuable skill set. Differentiable programming will force physicists to take an end-to-end approach to problem solving, a skill that is already looked for both within and outside HEP.

This challenge involves milestones and deliverables in DOMA, Analysis Systems, and SSL. Year 3 will include a Blueprint and other meetings focused on scoping of the target analysis, the needed capabilities of an analysis system, and roadmaps for how the components will interact. Year 4 will include initial benchmarking of analysis system components and integrations, and we aim to execute the analysis grand challenge in Year 5.
