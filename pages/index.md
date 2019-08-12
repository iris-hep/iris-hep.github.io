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
