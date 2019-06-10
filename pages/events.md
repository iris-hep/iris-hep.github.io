---
permalink: /events.html
layout: default
title: IRIS-HEP Events
---

<br>
IRIS-HEP team members are, or have been, involved in organizing the following events:
<ul>
{% assign yearlist = "2019, 2018, 2017, 2016" | split: ", " %}
{% assign monthlist= "12, 11, 10, 09, 08, 07, 06, 05, 04, 03, 02, 01" | split: ", " %}

{% comment %}
Go through the list and produce a breakdown of the events in reverse 
chronological order, grouped by months
{% endcomment %}

{% for yearidx in yearlist %}
{% for monthidx in monthlist %}
{% assign selected_array = "" | split: ',' %}
{% for event_hash in site.data.events  %}
  {% assign event = event_hash[1] %}
  {% assign eventyear = event.startdate | date: "%Y" %}
  {% assign eventmonth = event.startdate | date: "%m" %}
  {% if eventyear == yearidx and eventmonth == monthidx %}
     {% assign selected_array = selected_array | push: event %}
  {% endif %}
{% endfor %}

{% assign selected_array = selected_array | sort: 'startdate' | reverse %}
{% assign hdrprint = true %}
<ul>
{% for event in selected_array %}
  {% if hdrprint == true %}
    <br><h5>{{event.startdate | date: "%B, %Y"}}</h5>
    {% assign hdrprint = false %}
  {% endif %}
  <li>{{event.startdate | date: "%-d %b" }}{{event.enddate | date: " - %-d %b" }}, {{event.startdate | date: "%Y" }} - <a href="{{event.meetingurl}}">{{event.name}}</a> (<i>{{event.location}}</i>)</li>
{% endfor %}
</ul>

{% endfor %}
{% endfor %}
<br>

