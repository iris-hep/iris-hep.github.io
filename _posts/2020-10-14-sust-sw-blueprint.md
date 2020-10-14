---
layout: irispost
title: Software Sustainability & High Energy Physics Blueprint Workshop
author: Daniel S. Katz
postimage: /assets/images/blueprint-process.png
postimage-caption: "This workshop was part of the Blueprint process, which is designed to inform the development and evolution of the IRIS-HEP strategic vision, in this case regarding susainable software."
summary: "On July 22, about 80 researchers interested in both sustainable software and high energy physics gathered virtually to talk about how the high energy physics community could make its software more sustainable, wanting it to be easier to develop and maintain so that it remains available in the future on new platforms, meets new needs, and is as reusable as possible."
---


On July 22, about 80 researchers interested in both sustainable software and high energy physics gathered virtually to talk about how
the high energy physics community could make its software more sustainable, wanting it to be easier to develop and maintain so that it
remains available in the future on new platforms, meets new needs, and is as reusable as possible.

New facilities of the 2020s, such as the High Luminosity Large Hadron Collider (HL-LHC), will be relevant through at least the 2030s.
This means that their software efforts and those that are used to analyze their data need to consider sustainability to enable their
adaptability to new challenges, longevity, and efficiency, over at least this period. This will help ensure that this software will
be easier to develop and maintain, that it remains available in the future on new platforms, that it meets new needs, and that it is
as reusable as possible. In response to this need, a set of about 80 researchers interested in both sustainable software and high energy physics
gathered for a virtual half-day workshop on "[Software Sustainability and High Energy Physics](https://indico.cern.ch/event/930127/)" that
aimed 1) to bring together experts from HEP as well as those from outside to share their experiences and practices, and 2) to articulate
a vision that helps the Institute for Research and Innovation in Software for High Energy Physics (IRIS-HEP) to create a work plan to
implement elements of software sustainability. Software sustainability practices could lead to new collaborations, including elements
of HEP software being directly used outside the field, and, as has happened more frequently in recent years, to HEP developers contributing
to software developed outside the field rather than reinventing it. A focus on and skills related to sustainable software will give HEP
software developers an important skill that is essential to careers in the realm of software, inside or outside HEP. The organizers,
speakers, and some of the attendees have now written and released on a report on workshop, that includes a decsription of the goals,
the talks, and the discusssion sessions, and the report closes
with recommendations to improve software sustainability in HEP, aimed at the HEP community via IRIS-HEP and the HEP Software Foundation (HSF).
The report is available from [arXiv](https://arxiv.org/abs/2010.05102) and [Zenodo](https://doi.org/10.5281/zenodo.4082137).

The recommendations focus on three topics: training, software, and people.

On **training**, the workshop report recomends that IRIS-HEP and other HEP projects repurpose nominal funding from in-person training (travel, lodging, food)
to pay for the development of training material. This could be done through a set of limited-duration Visiting Pedagogy Fellowships. Each would
be aimed at either an existing need for curricular material (as defined by the HSF/IRIS-HEP training group) or proposed by the fellow, but agreed
to by the training group. A fellowship project could create initial content for a module, improve the initial content developed by someone else,
or both.

The workshop report also recommends an investment in the scalability of training. IRIS-HEP and HSF are now collaborating on software training,
setting up a model of training across HEP. A framework of a scalable and sustainable software training model has been established that is still
its initial phase. Hundreds of people have been trained at several software training and outreach events. The
[training framework](https://hepsoftwarefoundation.org/workinggroups/training.html) elements are:

  - publicly shareable software training material
  - a community of trainers
  - feedback surveys on usefulness of training
  - improvement and funding to sustain training

Scalability means maximising the impact of this work with the least involvement. Two main factors for scalability are human resources and costs.
To self-sustain, scale, and survive means having the ability to train with minimal funding and without direct involvement by HSF or IRIS-HEP.
While continuing the existing work, and developing and evolving the training material, the report recommends that next major step be spreading
the training events and training experts geographically to keep the costs low, and mostly moving to an online training model, reducing in-person
training. Training should be structured such that only a minimal number of people are needed to keep the training infrastructure running and
identify what are additional costs for additional events. A funding model beyond IRIS-HEP is needed. Mentoring the trainers/mentors to increase
the community is an important aspect of sustaining the workforce. In addition, giving them recognition can keep the community vibrant, motivated
and help in careers. People should continue to see value in our training and how it can advance the field.

In **software**, the report recommends that we xplicitly consider and invest in tools that enable and support software sustainability.
A concrete need is to renew the HSF’s template for C++ projects, moving to a cookiecutter design and revamping its CMake template with modern
best practice. Likewise, another need is to work with Scikit-HEP to develop a similar project template for Python modules. These projects would be
intended to support the HP community generally, including IRIS-HEP, so that IRIS-HEP would contribute to the HSF templates, rather than creating
its own. Finally, the HEP community could contribute to Projects Carpentry lesson development, which is currently under discussion.

Additional software recommendations include
  - Developing best practices and technical solutions that support the use of containers for the sharing and transfer of knowledge and code (e.g.,
  between students to evolve an analysis.) For example, through creation of a 'sharing technologies forum', and bringing in notebooks and model
  sharing that leverage the kubernetes- based infrastructure of the IRIS-HEP Scalable Systems Laboratory and OSG-LHC. The ongoing Snowmass process
  in the US could provide one of several avenues for a testbed for supporting how people share knowledge, code and data.
  - Using Snowmass 2021 provides an opportunity to have issues with sustainability of software and related personnel heard, especially at the
  centers of powers and funding. The workshop organizers submitted a
  [letter of interest](https://www.snowmass21.org/docs/files/summaries/CommF/SNOWMASS21-CommF0_CommF4-CompF0_CompF7_DanielSKatz-038.pdf)
  on this topic to start this conversation.
  - Organizing a workshop exploring common software and services across HEP, perhaps associated with a major conference such as ACAT or CHEP.
  This could focus on a particular topic (e.g., small matrix linear algebra libraries) to increase the chances of a successful outcome.

In **people**, the report recommends organizing a workshop to exploring career opportunities within and outside HEP, as key to sustainability
of HEP software is sustainability of its personnel. To make this productive, department chairs and laboratory management would need to attend.
Additionally, the report recommends advocating to establish rewards for software contribution and innovation (similar to how
[CPAD](https://www.anl.gov/hep/coordinating-panel-for-advanced-detectors) does this for the HEP hardware). Many experiments (like CMS and ATLAS)
are already recognizing software contributions of young scientists by giving awards. EPS already offers a few HEP prizes, and in 2019 Josh Bendavid
won the Young Physicist prize and was cited, amongst other things, for 'software development.
The list of APS awards does not seem to have such an award. What is needed and recommended is not one award but a few number of them for
software contributions and even software training recognition. These rewards will be a good way to keep the talent motivated.

The material from the workshop is available online in an [Indico agenda](https://indico.cern.ch/event/930127/timetable/). 
