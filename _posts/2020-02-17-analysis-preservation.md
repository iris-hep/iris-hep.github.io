---
layout: irispost
title: Analysis Preservation Bootcamp
author: Lukas Heinrich and Kyle Cranmer
postimage: /assets/images/posts/2020-02-17-preservation-reproduced-plots.jpeg
postimage-caption: "Participants in [Analysis Preservation Bootcamp](https://indico.cern.ch/event/awesome) showing off their ability to reproduce an LHC analysis. Photo Credit: Samuel Meehan"
postbanner: /assets/images/posts/2020-02-17-preservation-thumbs-up.jpeg
summary: "The first [Analysis Preservation Bootcamp](https://indico.cern.ch/event/awesome) was held at CERN from February 17-19, 2020. Thirty graduate students and postdocs learned these new technologies aimed at ensuring reproducibility, streamlining onboarding, and extending the impact of LHC analyses through reuse."
---


One of the cross-cutting themes of IRIS-HEP's Analysis Systems effort is to promote analysis preservation and reuse. This includes streamlining how we capture analysis code as it is being developed as well as creating analysis systems that allow us to efficiently reuse those components. To learn how to properly archive such software-heavy data analyses, 30 young graduate
students and postdocs gathered at CERN for a three-day intensive "[Analysis Preservation
Bootcamp](https://indico.cern.ch/event/awesome)" made possible through the funds of IRIS-HEP. Organized by Sam Meehan, Lukas Heinrich,
Clemens Lange (CERN) and IRIS-HEP postdoc Savannah Thais (Princeton), the workshop
participants could count on a great team of volunteer mentors to help them through any technical
difficulties.

The goal of analysis preservation is not only to ensure reproducibility, but also to extend the impact of the analyses performed by LHC experimentalists. The technologies streamline the on-boarding process for new collaborators, aid in the analysis development process, and can allow for theorists to reinterpret the results of previous searches.

"I thought it was super useful, I feel way less overwhelmed by discussions about these tools and do feel empowered to make changes/improvements to the setup my analysis already uses," remarked one participant in an exit survey.

{% include figure.html
    file="/assets/images/posts/2020-02-17-preservation-action.jpeg"
    alt="Instructors working with participants with laptops"
    caption="Instructors Danika MacDonnel and Giordon Stark working with participants.  Photo Credit: Samuel Meehan."
%}


These efforts also complement open data initiatives in a vital way, as outlined in the opinion piece [Open is not enough](https://doi.org/10.1038/s41567-018-0342-2). This is a long-running theme of NSF-funded projects including [DASPOS](https://daspos.crc.nd.edu) and [DIANA/HEP](https://diana-hep.org). Those projects supported early work targeted at [RECAST](https://iris-hep.org/projects/recast.html), a proposed service for reinterpreting the results of searches at the LHC.



While the publications themselves offer already a great deal of detail about the studies,
the huge amounts of data collected at the LHC implies that the real logic of the analyses
is often encoded in software -- from the precise way in which collisions are selected
to the statistical treatment leading to the final measurement.

Several technical challenges had to be overcome in order to make this service a reality. The [solution that emerged](http://inspirehep.net/record/1603090) involved leveraging containerization technology used widely in cloud computing as well as workflow technologies. These technologies were abstracted from their high-energy physics origins into the [REANA](http://reanahub.io) product now primarily developed at CERN with contributions from various NSF-funded projects like [DASPOS](https://daspos.crc.nd.edu), [DIANA/HEP](https://diana-hep.org), IRIS-HEP, and [SCAILFIN](https://scailfin.github.io).


On the first two days, students learned to efficiently use modern software engineering
and cloud computing tools such as version control, continuous integration, and Docker
containers to ensure the analysis code and its development history are properly archived
and portably packaged to be used on any cloud computing platform.
On the third and final day, the students heard from Tibor Simko of the [REANA](http://reanahub.io) project, where they learned how to  define computational workflows to preserve the order of analysis steps
required to carry the analysis from initial event selection all the way to final
result. Among other things, [REANA](http://reanahub.io) is used as a computational backend for the
reinterpretation framework [RECAST](https://iris-hep.org/projects/recast.html) and thus will play a key role in ongoing summary
studies at the LHC.


With the second run of the LHC finished and the upgrade for Run-3 underway, some time will pass
until the four LHC experiments have collected enough new data to significantly increase
the sensitivity to Beyond Standard Model phenomena or the precision of Standard Model
measurements. In turn, this implies that the current analyses being finalized on the full Run-2 dataset
will be the most precise studies at LHC-scale physics for a long time. It is thus crucial
that the  details of those analysis are fully preserved. While it is important to be able
to reliably reproduce the published results, it the ability to reuse analysis allows for reinterpretations and new meta-analyses studying the overall impact of the LHC experiments on our understanding of nature.
This is one reason why ATLAS now requires all searches for  new physics to be
archived in such a *reusable* manner.

{% include figure.html
    file="/assets/images/posts/2020-02-17-preservation-action2.jpeg"
    alt="Participants listening to instructor with laptops"
    caption="Instructor Giordon Stark working with participants.  Photo Credit: Samuel Meehan."
%}

<h3>Acknowledgements</h3>

Organizers:

 * Clemens Lange
 * Lukas Alexander Heinrich
 * Samuel Ross Meehan
 * Savannah Jennifer Thais


Instructors :

 * Giordon Stark
 * Danika MacDonnel
 * Tibor Simko


Mentors :

 * Emma Torro
 * Mason Profitt
 * Leonora Vesterbacka
 * Stefan Wunsch
 * Thea Aarrestad
 * Brendan Regnery
 * Rokas Maciulaitis
 * Diego Rodriguez Rodriguez
 * Marco Vidal



<!--<blockquote class="twitter-tweet"><p lang="en" dir="ltr">so many reproduced plots! :) <a href="https://t.co/Kc9rpRfsnT">https://t.co/Kc9rpRfsnT</a></p>&mdash; Lukas Heinrich (@lukasheinrich_) <a href="https://twitter.com/lukasheinrich_/status/1230252595303927810?ref_src=twsrc%5Etfw">February 19, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>-->


<br clear="all" />

<h3>Reactions from participants shared on twitter</h3>


<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Thoroughly enjoying myself at an <a href="https://twitter.com/iris_hep?ref_src=twsrc%5Etfw">@iris_hep</a>/<a href="https://twitter.com/diana_hep?ref_src=twsrc%5Etfw">@diana_hep</a> analysis preservation bootcamp <a href="https://twitter.com/CERN?ref_src=twsrc%5Etfw">@CERN</a> today! <a href="https://t.co/AGNpmuHX1X">https://t.co/AGNpmuHX1X</a> <a href="https://t.co/b0D1TfKSXv">pic.twitter.com/b0D1TfKSXv</a></p>&mdash; Josh McFayden (@JoshMcFayden) <a href="https://twitter.com/JoshMcFayden/status/1229356905799266306?ref_src=twsrc%5Etfw">February 17, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>


<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Today: REANA ✅ <a href="https://t.co/s98F8z8QFk">pic.twitter.com/s98F8z8QFk</a></p>&mdash; Josh McFayden (@JoshMcFayden) <a href="https://twitter.com/JoshMcFayden/status/1230079292941459456?ref_src=twsrc%5Etfw">February 19, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>



<blockquote class="twitter-tweet"><p lang="en" dir="ltr">And the result of all this hard work using <a href="https://twitter.com/reanahub?ref_src=twsrc%5Etfw">@reanahub</a>? (Re)discovering Higgs→ττ: <a href="https://t.co/1fevgqWwaR">pic.twitter.com/1fevgqWwaR</a></p>&mdash; Josh McFayden (@JoshMcFayden) <a href="https://twitter.com/JoshMcFayden/status/1230110214235598850?ref_src=twsrc%5Etfw">February 19, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

<h3>Related events</h3>

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Today is <a href="https://twitter.com/hashtag/Docker?src=hash&amp;ref_src=twsrc%5Etfw">#Docker</a> day at the <a href="https://twitter.com/hashtag/USATLASComputingBootcamp?src=hash&amp;ref_src=twsrc%5Etfw">#USATLASComputingBootcamp</a>! This morning I taught an introduction to Docker and this afternoon Danika Macdonell is teaching how to use Docker in ATLAS’s <a href="https://twitter.com/hashtag/RECAST?src=hash&amp;ref_src=twsrc%5Etfw">#RECAST</a> for analysis preservation and reinterpretation. 👍🚀 <a href="https://t.co/HTXCuU2AJH">https://t.co/HTXCuU2AJH</a> <a href="https://t.co/UDr9i9nFVK">pic.twitter.com/UDr9i9nFVK</a></p>&mdash; Matthew Feickert (@HEPfeickert) <a href="https://twitter.com/HEPfeickert/status/1164643338487660544?ref_src=twsrc%5Etfw">August 22, 2019</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
