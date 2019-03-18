---
permalink: /test2.html
layout: default
title: Institute for Research and Innovation in Software
---
<h3>Computational and data science research to enable discoveries in fundamental physics</h3>
<br>
IRIS-HEP is a software institute funded by the National Science Foundation. It aims to develop the state-of-the-art software cyberinfrastructure required for the challenges of data intensive scientific research at the High Luminosity Large Hadron Collider (HL-LHC) at CERN, and other planned HEP experiments of the 2020's. These facilities are discovery machines which aim to understand the fundamental building blocks of nature and their interactions. [Full Overview](/about/overview.html)
<br><br>
The IRIS-HEP project was funded on 1 September, 2018, and is ramping up its activities. 


{% comment %}
Go through the list and produce a list of upcoming events as well as a 
list of events in the past 90 days. Treat 6 days ago as "now" so that
ongoing events don't get prematurely flagged as recent.
{% endcomment %}
{% assign currentdatecmp = 'now' | date: "%s" %}
{% assign sixdaysago = 'now' | date: "%s" | minus: 518400 | date: "%b %d, %Y %I:%M %p -0500" | uri_encode | replace: "+","%20" | date: "%s"%}
{% assign ninetydaysago = 'now' | date: "%s" | minus: 7776000| date: "%b %d, %Y %I:%M %p -0500" | uri_encode | replace: "+","%20" | date: "%s"%}
<br>

<h4>Upcoming and Recent Events:</h4>
<br>
<b>Upcoming Events:</b>
<ul>
{% for event_hash in site.data.events %}
  {% assign event = event_hash[1] %}
  {% assign startdatecmp = event.startdate | date: "%s" %}
  {% if startdatecmp >= sixdaysago %} 
  <li> {{TXT}}{{event.startdate | date: "%-d %b" }}{{event.enddate | date: " - %-d %b" }}, {{event.startdate | date: "%Y" }} - <a href="{{event.meetingurl}}">{{event.name}}</a> (<i>{{event.location}}</i>)</li>
  {% endif %}
{% endfor %}
</ul>

<b>Recent Events:</b>
<ul>
{% for event_hash in site.data.events  %}
  {% assign event = event_hash[1] %}
  {% assign startdatecmp = event.startdate | date: "%s" %}
  {% if startdatecmp < sixdaysago and startdatecmp > ninetydaysago %}
  <li> {{TXT}}{{event.startdate | date: "%-d %b" }}{{event.enddate | date: " - %-d %b" }}, {{event.startdate | date: "%Y" }} - <a href="{{event.meetingurl}}">{{event.name}}</a> (<i>{{event.location}}</i>)</li>
  {% endif %}
{% endfor %}
</ul>

<br>

<br>
<h4>Upcoming Events 12:</h4>
<br>
IRIS-HEP team members are involved in organizing the following events:
<ul>
{% for event_hash in site.data.events  %}
  {% assign event = event_hash[1] %}
  <li> {{event.startdate | date: "%-d %b" }}{{event.enddate | date: " - %-d %b" }}, {{event.startdate | date: "%Y" }} - {{event.name}} </li>
  <ul>
      <li> <i>{{event.location}}</i> </li>
      <li> <a href="{{event.meetingurl}}">Website</a> </li>
  </ul>
{% endfor %}
</ul>
<br>

<br>
<h4>Events month by month:</h4>
<br>
IRIS-HEP team members are involved in organizing the following events:
<ul>
{% assign yearlist = "2019, 2018, 2017, 2016" | split: ", " %}
{% assign monthlist= "12, 11, 10, 09, 08, 07, 06, 05, 04, 03, 02, 01" | split: ", " %}

{% comment %}
Go through the list and produce a breakdown of the events in reverse 
chronological order, grouped by months
{% endcomment %}

{% for yearidx in yearlist %}
{% for monthidx in monthlist %}
{% assign hdrprint = true %}
{% for event_hash in site.data.events  %}
  {% assign event = event_hash[1] %}
  {% assign eventyear = event.startdate | date: "%Y" %}
  {% assign eventmonth = event.startdate | date: "%m" %}
  {% if eventyear == yearidx and eventmonth == monthidx %}
  {% assign startdatecmp = event.startdate | date: "%s" %}
  {% if hdrprint == true %}
    <br><h5>{{event.startdate | date: "%B, %Y"}}</h5>
    {% assign hdrprint = false %}
  {% endif %}
  <li>{{event.startdate | date: "%-d %b" }}{{event.enddate | date: " - %-d %b" }}, {{event.startdate | date: "%Y" }} - <a href="{{event.meetingurl}}">{{event.name}}</a> (<i>{{event.location}}</i>)</li>
  {% endif %}
{% endfor %}
{% endfor %}
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
      <li> <a href="{{event.meetingurl}}">Website</a> </li>
  </ul>
  {% endif %}
{% endfor %}
</ul>
<br>

