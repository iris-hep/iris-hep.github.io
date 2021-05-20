---
permalink: /ssc.html
layout: focus-area
title: Training, Education and Outreach
short_title: ssc
pagetype: focus-area
---

#### Quick links
- <a href="#tr_events">Upcoming and recent events</a>
- [Training Modules and videos][introductory HEP software curriculum]
- [HSF Training Events][HSF events]

#### Introduction

The long-term sustainability of the research software ecosystem is particularly
important for HEP, given that the HL-LHC and other facilities of the 2020s will
be relevant through at least the 2030s. The IRIS-HEP Software Sustainability
Core (SSC) focuses on activities which promote the long-term sustainability of
the software. The SSC has primarily focused on **Training, Education and
Outreach**.

To implement this vision, IRIS-HEP has developed a program to
provide software training paths from a researcher's first steps through more
regular, active contribution along with its partners: [HSF][], [FIRST-HEP][] and the
[Carpentries][]. In particular, it has developed an [introductory HEP software
curriculum][] and several software modules on techniques and methods for computing
and data science.  The training program has enabled HEP users to jump start
their research and contribution to the field. The common efforts on training
across HEP has helped build a strong sense of community.

Our efforts have established a platform from where we can scale and sustain our
training efforts. Our training vision is reflected in the pyramid below.

{% include figure.html
  file="/assets/images/Training-Pyramid.png"
  alt="Training pyramid diagram"
  class="center"
  caption="A vision for training in HEP: researchers progress (vertically) from
           basic skills training, through user training in existing software to training
           in skills needed to develop new research software."
%}


#### Computational and Data Science for High Energy Physics (CoDaS-HEP) Summer School

{% include figure.html
  file="/assets/images/posts/2019-07-26-codas-hep-2019-main.jpg"
  alt="Photo of CoDaS-HEP participants"
  caption="Group photo of participants of the 3rd summer school on tools, techniques and
          methods for Computational and Data Science for High Energy Physics (CoDaS-HEP)
          at Princeton University on July 22-26, 2019."
%}

IRIS-HEP team members help organize events, develop training material and
participate as lecturers at all levels of this training vision. We organize and
run the annual [Computational and Data Science for High Energy Physics
(CoDaS-HEP) summer school][CoDaS-HEP] at Princeton and provide additional professional
development for the most advanced students and postdocs by supporting
connections with mentors through the [IRIS-HEP Fellows Program][]. Integrated with
this is a robust outreach program to engage local communities. This is
essential to train STEM students in software at K-12 level by partnering with
their teachers. These steps create a workforce capable of solving software
challenges in general and those of HEP in particular.


#### Best Practices

IRIS-HEP continues to document, disseminate, and work towards community
adoption of the best practices (from HEP and beyond) in the areas of software
sustainability, including topics in software engineering, data/software
preservation, and reproducibility. Of particular importance are best practices
surrounding the modernization of the software development process for
scientists.

---

<h4 id="tr_events" style="padding-top:90px; margin-top: -90px;">Upcoming and Recent Training and Outreach Events</h4>
{% include get_all_events.html %}
{% assign sorted_events = all_events | sort: 'startdate' | reverse %}
{% assign training_events = "" | split: "," %}
{% for event in sorted_events %}
{% if event.labels %}
{% if event.labels contains "training" %}
{% assign training_events = training_events | push: event %}
{% endif %}
{% endif %}
{% endfor %}

{% expandable training_events 7 %}
{% include print_event.html students=1 event=expandable %}
{% endexpandable %}

### Links for more information:
- **HSF Training Events**: Check out [ongoing training activities here.][HSF events]<br/>
- **Community:** [Engage and find out more about the HSF training community here.][HSF community]<br/>
- **Request or help organize training:** [Click here to request and organize a training.](https://hepsoftwarefoundation.org/training/howto-event.html)
- **Selected training resources**
  - [All HSF training modules.][introductory HEP software curriculum]<br/>
  - [OSG 2020 Virtual School Pilot](https://opensciencegrid.org/virtual-school-pilot-2020/#materials)
  - [HSF training videos](https://www.youtube.com/c/HEPSoftwareFoundation/playlists) on YouTube.
  - [Software Carpentry lessons](https://software-carpentry.org/lessons/).
  - Most recent SIDIS/HSF [C++ course lectures](https://indico.cern.ch/event/979067/) (Scroll to the end of the page to find them)
<br/>

**Questions/Ideas?** Contact Sudhir Malik (sudhir.malik@upr.edu)<br/>


[HSF]: https://hepsoftwarefoundation.org
[HSF community]: https://hepsoftwarefoundation.org/training/community.html
[HSF events]: https://hepsoftwarefoundation.org/Schools/events.html
[FIRST-HEP]: https://first-hep.org
[Carpentries]: https://software-carpentry.org
[introductory HEP software curriculum]: https://hepsoftwarefoundation.org/training/curriculum.html
[CoDaS-HEP]: https://codas-hep.org/
[IRIS-HEP Fellows Program]: https://iris-hep.org/fellows.html
