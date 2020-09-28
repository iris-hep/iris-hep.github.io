---
permalink: /events.html
layout: default
title: IRIS-HEP Events
---
<center> 
<h3> IRIS-HEP Events</h3>
</center>

<br>
IRIS-HEP team members are, or have been, involved in organizing the following events:
<ul>
{% assign yearlist = "2020, 2019, 2018, 2017, 2016" | split: ", " %}
{% assign monthlist= "12, 11, 10, 09, 08, 07, 06, 05, 04, 03, 02, 01" | split: ", " %}

{% comment %}
Go through the list and produce a breakdown of the events in reverse 
chronological order, grouped by months
{% endcomment %}

{%- include get_all_events.html -%}

{% assign hdrprint = true %}
<ul>
{% for event in all_events %}
  {% if hdrprint == true %}
    <br><h5>{{event.startdate | date: "%B, %Y"}}</h5>
    {% assign hdrprint = false %}
  {% endif %}
  <li>{{event.startdate | date: "%-d %b" }}{{event.enddate | date: " - %-d %b" }}, {{event.startdate | date: "%Y" }} - <a href="{{event.meetingurl}}">{{event.name}}</a> (<i>{{event.location}}</i>)
  {% if event.abstractdeadline %}
    (Abstract deadline: {event.abstractdeadline | date: date: " - %-d %b"})
{% endif %}
</li>
{% endfor %}
</ul>

{% endfor %}
{% endfor %}
<br>

