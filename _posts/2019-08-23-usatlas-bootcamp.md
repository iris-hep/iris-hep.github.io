---
layout: irispost
title: First USATLAS Bootcamp held in coordination with Software Carpentries and IRIS-HEP/FIRST-HEP
author: Henry Schreiner
image: /assets/images/posts/2019-08-23-usatlas-bootcamp-main.jpg
image-caption: Teachers and students pose outside at LBNL.
postbanner: /assets/images/posts/2019-08-23-usatlas-bootcamp-class.jpg
summary: The first USATLAS Bootcamp was a huge success. 31 students and more than 8 instructors met at the Lawrence Berkeley National Laboratory to cover four topics from both a general and experiment specific viewpoint.
---

IRIS-HEP/FIRST-HEP partnered with the Software Carpentries and USATLAS for the first USATLAS Bootcamp, held at Lawrence Berkeley National Laboratory.
<!--more-->
Four instructors from ATLAS, two from Software Carpentries, and two from IRIS-HEP were involved, along with five helpers from ATLAS, providing a 4:1 student to instructor ratio to be maintained at all times with the 31 students. This five day training event taught four basic computing skills: version control, build systems, continuous integration/testing, and containers. Each morning session was followed up by an ATLAS specific lesson in the afternoon over that topic. For the final half-day, instructors proposed a set of topics and the students voted on them; the top three topics were then taught in parallel sessions.

Feedback from the workshop was overwhelmingly positive. All 31 students completed both the preworkshop and postmortum surveys. The gender makeup was 63% male and 37% female. 90% were PhD students. In all areas, student self-identification of skill levels increased dramatically after the bootcamp. Before starting, well over half of the students did not know how to use CMake to build a C++ project; but after the bootcamp, over 90% identified as at least half way to an expert (and 0% identified as a beginner). Using Continuous integration for Analysis was even slightly better (due at least in part to a universally praised session on ATLAS CI by Giordon Stark), with containers and version control increases only slightly behind. Around 90% were interested or possibly interested in helping out at a similar event in the future.

Students had a great time and built connections to other ATLAS collaborators and with several IRIS-HEP members; everyone said they met at least four new collaboration members. Several social activities were planned, such as a pizza lunch, two dinners at a local restaurants, and a visit to the Berkeley Bowl; a nearby supermarket that has become a local favorite. A couple of hours one day were set aside for a career panel, where students heard from six people from careers after working on ATLAS or anther HEP experiment that live in the Bay area. 77% of the participants believed this was "Very Useful", with 68% of the participants saying that their perspective on potential career paths after grad school were changed as a result of the panel.

The material from the workshop is available online. The [workshop website](https://smeehan12.github.io/2019-08-19-usatlas-computing-bootcamp/) and [Indico page](https://indico.cern.ch/event/816946/) are excellent places to go to find out more about the material taught in workshop, including the pre-workshop setup and installation guides. The sessions in the workshop are listed in the table below.

<div style="clear:both"></div>

| Morning session | &nbsp; | Afternoon session |
|-----------------|---|-------------------|
| [Introduction to Git: by Software Carpentries][] | | [Git in ATLAS][] |
| [Building Code with CMake: by IRIS-HEP][] | | [CMake in ATLAS][] |
| [Testing in Python and CI/CD: by Software Carpentries][] | | [CI/CD in ATLAS][] |
| [Distribution/Environments with Docker: by IRIS-HEP][] | | [ATLAS-Docker and Analysis Preservation in ATLAS][] |

<br/>


[Introduction to Git: by Software Carpentries]:         http://swcarpentry.github.io/git-novice/
[Git in ATLAS]:                                         https://dguest.github.io/atlas-gitlab/
[Building Code with CMake: by IRIS-HEP]:                https://henryiii.github.io/cmake_workshop/
[CMake in ATLAS]:                                       https://kkrizka.github.io/atlas-cmake/
[Testing in Python and CI/CD: by Software Carpentries]: http://katyhuff.github.io/python-testing/
[CI/CD in ATLAS]:                                       https://kratsg.github.io/2019-08-19-usatlas-computing-bootcamp/
[Distribution/Environments with Docker: by IRIS-HEP]:   https://matthewfeickert.github.io/intro-to-docker
[ATLAS-Docker and Analysis Preservation in ATLAS]:      https://danikam.github.io/2019-08-19-usatlas-recast-tutorial/

{% include figure.html
    file="/assets/images/posts/2019-08-23-usatlas-bootcamp-pizza.jpg"
    alt="Students and teachers eating pizza outside"
    caption="Enjoying a pizza lunch outside."
    class="center"
%}

{% include figure.html
    file="/assets/images/posts/2019-08-23-usatlas-bootcamp-teaching.jpg"
    alt="Teaching in front of a screen"
    caption="Teaching the container lesson."
    class="center"
%}



