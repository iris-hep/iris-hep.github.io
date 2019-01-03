---
permalink: /test2.html
layout: main
title: Institute for Research and Innovation in Software
bgimage: assets/images/Tprime-200pu-PhaseII-black-arctic-main-image.jpg
---
<h3>Computational and data science research to enable discoveries in fundamental physics</h3>
<br>
IRIS-HEP is a software institute funded by the National Science Foundation. It aims to develop the state-of-the-art software cyberinfrastructure required for the challenges of data intensive scientific research at the High Luminosity Large Hadron Collider (HL-LHC) at CERN, and other planned HEP experiments of the 2020's. These facilities are discovery machines which aim to understand the fundamental building blocks of nature and their interactions. [Full Overview](/about/overview.html)
<br><br>
The IRIS-HEP project was funded on 1 September, 2018, and is ramping up its activities. 

<br>
<h4>Upcoming Events:</h4>
<br>
IRIS-HEP team members are involved in organizing the following events:
<ul>
{% for event_hash in site.data.events  %}
  {% assign event = event_hash[1] %}
  <li> {{event.dates}} - {{event.name}} </li>
  <ul>
      <li> <i>{{event.location}}</i> </li>
      <li> <a href="{{event.website}}">Website</a> </li>
  </ul>
{% endfor %}
</ul>
<br>

<br>
<h4>Upcoming Events 23:</h4>
<br>
IRIS-HEP team members are involved in organizing the following events:
<ul>
{% assign event_items = site.data.events %}
{% for event_hash in event_items  %}
  {% assign event = event_hash[1] %}
  {% if event.status == 'current' %}
  <li> {{event.dates}} - {{event.name}} </li>
  <ul>
      <li> <i>{{event.location}}</i> </li>
      <li> <a href="{{event.website}}">Website</a> </li>
  </ul>
  {% endif %}
{% endfor %}
</ul>
<br>

