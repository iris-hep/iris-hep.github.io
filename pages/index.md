---
permalink: /index.html
layout: main
title: Institute for Research and Innovation in Software
bgimage: assets/images/Tprime-200pu-PhaseII-black-arctic-main-image.jpg
---
<h3>Computational and data science research to enable discoveries in fundamental physics</h3>
<br>
IRIS-HEP is a software institute funded by the National Science Foundation. It aims to develop the state-of-the-art software cyberinfrastructure required for the challenges of data intensive scientific research at the High Luminosity Large Hadron Collider (HL-LHC) at CERN, and other planned HEP experiments of the 2020's. These facilities are discovery machines which aim to understand the fundamental building blocks of nature and their interactions. [Full Overview](/about/overview.html)
<br><br>
The IRIS-HEP project was funded on 1 September, 2018, and is currently ramping up its activities. 

<br>
<h4>Upcoming Events:</h4>
IRIS-HEP team members are involved in organizing the following events:
<ul>
{% assign event_items = site.data.events %}
{% for event_hash in event_items  %}
  {% assign event = event_hash[1] %}
  {% if event.status == 'current' %}
  <li> {{event.startdate | date: "%-d %b" }}{{event.enddate | date: " - %-d %b" }}, {{event.startdate | date: "%Y" }} - {{event.name}} </li>
  <ul>
      <li> <i>{{event.location}}</i> </li>
      <li> <a href="{{event.website}}">Website</a> </li>
  </ul>
  {% endif %}
{% endfor %}
</ul>

<h4>Past Events:</h4>
<ul>
{% assign event_items = site.data.events %}
{% for event_hash in event_items  %}
  {% assign event = event_hash[1] %}
  {% if event.status == 'past' %}
  <li> {{event.startdate | date: "%-d %b" }}{{event.enddate | date: " - %-d %b" }}, {{event.startdate | date: "%Y" }} - {{event.name}} </li>
  <ul>
      <li> <i>{{event.location}}</i> </li>
      <li> <a href="{{event.website}}">Website</a> </li>
  </ul>
  {% endif %}
{% endfor %}
</ul>

