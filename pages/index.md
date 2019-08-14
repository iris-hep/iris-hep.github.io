---
permalink: /index.html
layout: main
title: Institute for Research and Innovation in Software
bgimage: assets/images/Tprime-200pu-PhaseII-black-arctic-main-image.jpg
---
<h3>Computational and data science research to enable discoveries in fundamental physics</h3>
<br>
IRIS-HEP is a software institute funded by the National Science Foundation. It aims to develop the state-of-the-art software cyberinfrastructure required for the challenges of data intensive scientific research at the High Luminosity Large Hadron Collider (HL-LHC) at CERN, and other planned HEP experiments of the 2020's. These facilities are discovery machines which aim to understand the fundamental building blocks of nature and their interactions. [Full Overview](/about/overview.html)

{% comment %}
Go through the list and produce a list of upcoming events as well as a 
list of events in the past 90 days. Treat 6 days ago as "now" so that
ongoing events don't get prematurely flagged as recent.
{% endcomment %}
{% assign currentdatecmp = 'now' | date: "%s" %}
{% assign sixdaysago = 'now' | date: "%s" | minus: 518400 | date: "%b %d, %Y %I:%M %p -0500" | uri_encode | replace: "+","%20" | date: "%s"%}
{% assign ninetydaysago = 'now' | date: "%s" | minus: 7776000| date: "%b %d, %Y %I:%M %p -0500" | uri_encode | replace: "+","%20" | date: "%s"%}

<hr style="border: 5px solid green; border-radius: 2px;">
{% assign selected_events = "" | split: ',' %}
<h4>Upcoming Events:</h4>
IRIS-HEP team members are involved in organizing the following events:
{% for event_hash in site.data.events %}
  {% assign event = event_hash[1] %}
  {% assign startdatecmp = event.startdate | date: "%s" %}
  {% if startdatecmp >= sixdaysago %} 
     {% assign selected_events = selected_events | push: event %}
  {% endif %}
{% endfor %}

<ul>
{% assign selected_events = selected_events | sort: 'startdate' %}
{% for event in selected_events %}
  {% assign startdatecmp = event.startdate | date: "%s" %}
  <li> {{TXT}}{{event.startdate | date: "%-d %b" }}{{event.enddate | date: " - %-d %b" }}, {{event.startdate | date: "%Y" }} - <a href="{{event.meetingurl}}">{{event.name}}</a> (<i>{{event.location}}</i>)</li>
{% endfor %}
</ul>


{% assign selected_events = "" | split: ',' %}
<h4>Recent Events:</h4>
{% for event_hash in site.data.events  %}
  {% assign event = event_hash[1] %}
  {% assign startdatecmp = event.startdate | date: "%s" %}
  {% if startdatecmp < sixdaysago and startdatecmp > ninetydaysago %}
     {% assign selected_events = selected_events | push: event %}
  {% endif %}
{% endfor %}

<ul>
{% assign selected_events = selected_events | sort: 'startdate' | reverse %}
{% for event in selected_events  %}
  {% assign startdatecmp = event.startdate | date: "%s" %}
  {% if startdatecmp < sixdaysago and startdatecmp > ninetydaysago %}
  <li> {{TXT}}{{event.startdate | date: "%-d %b" }}{{event.enddate | date: " - %-d %b" }}, {{event.startdate | date: "%Y" }} - <a href="{{event.meetingurl}}">{{event.name}}</a> (<i>{{event.location}}</i>)</li>
  {% endif %}
{% endfor %}
</ul>


<a href="/events.html">View all past events</a>
<br>


<h4>Upcoming Topical Meetings:</h4>
{% include get_indico_list.html %}
<ul>
{% for event in selected_array %}
  {% assign startdatecmp = event.startdate | date: "%s" %}
  {% if currentdatecmp <= startdatecmp %}
    <li>{{event.startdate | date: "%-d %b" }}{{event.enddate | date: " - %-d %b" }}, {{event.startdate | date: "%Y" }} - <a href="{{event.meetingurl}}">{{event.name}}</a></li>
  {% endif %}
{% endfor %}
</ul>

<a href="/topical.html">View all past meetings</a>
&bull;
<a href="https://indico.cern.ch/category/10570/">Indico</a> <a href="https://www.youtube.com/channel/UC8Dmx4MYjp6RQ9ngc58Ujmg/videos">(recordings)</a>
&bull;
<a href="https://vidyoportal.cern.ch/join/oT21qIc1id">Vidyo room</a>

<br>

<h4>IRIS-HEP fellowship program:</h4>
IRIS-HEP Fellows spend several months working closely with a mentor on 
a HEP software R&D topic relevant to the Institute. 
<a href="/fellows.html">Find out more about opportunities with the IRIS-HEP fellows program.</a>

<div class="container-fluid">
  <div class="row">
{% assign sorted = site.pages | sort: 'title' %}
{% for mypage in sorted %}
  {% if mypage.pagetype == 'fellow' %} 
     {% assign person = mypage %}
     <div class="card" style="width: 12rem;">
        <img class="card-img-top" src="{{person.photo}}" alt="Card image cap">
        <div class="card-body d-flex flex-column">
          <div class="card-text">
             <b><a href="{{person.permalink}}">{{person.fellow-name}}</a></b><br>
             <small>{{person.institution}}</small><br><br>
          </div>
          <div class="card-text mt-auto"><i>{{person.dates}}</i><br></div>
        </div>
     </div>
  {% endif %}
{% endfor %}
  </div>
  <br>
</div>
<br>
<br>

Related projects:

[The ATLAS experiment](https://home.cern/science/experiments/atlas) 
&bull; [The Compact Muon Solenoid (CMS) experiment](https://home.cern/science/experiments/cms) 
&bull; [The Large Hadron Collider beauty (LHCb) experiment](https://home.cern/science/experiments/lhcb)
&bull; [U.S. ATLAS Collaboration](https://po.usatlas.bnl.gov/)
&bull; [U.S. ATLAS Operations Program](https://po.usatlas.bnl.gov/programoffice/op.php)
&bull; [U.S. CMS Collaboration](https://uscms.org/index.shtml)
&bull; [U.S. CMS Operations Program](https://uscms.org/uscms_at_work/rpo/index.shtml)
&bull; [Open Science Grid (OSG)](https://opensciencegrid.org/)
&bull; [SCAILFIN](https://scailfin.github.io/)
&bull; [SLATE](https://slateci.io)
&bull; [VC3](https://www.virtualclusters.org)
&bull; [DIANA/HEP](http://diana-hep.org/) 
&bull; [Parallel Kalman Filter Tracking](http://trackreco.github.io/)
&bull; [ACTS](https://gitlab.cern.ch/acts)
&bull; [Scikit-HEP](http://scikit-hep.org)
&bull; [PyHEP](https://hepsoftwarefoundation.org/workinggroups/pyhep.html)
&bull; [HEP Software Foundation (HSF)](https://hepsoftwarefoundation.org)
&bull; [US-RSE](http://us-rse.org)
&bull; [FIRST-HEP](http://first-hep.org/)
&bull; [CoDaS-HEP](http://codas-hep.org/) 
&bull; [S2I2-HEP](http://s2i2-hep.org/)
&bull; [DASPOS](http://daspos.org/)
---&gt; [Full list with details](/collaborations)
