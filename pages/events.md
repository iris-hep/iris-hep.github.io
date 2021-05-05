---
permalink: /events.html
layout: default
title: IRIS-HEP Events
---
<center>
<h3> IRIS-HEP Events</h3>
</center>

<br>
Events that IRIS-HEP team members are involved in organizing, planning to participate in or otherwise interested in:

<ul>
{% assign yearlist = "2023, 2022, 2021, 2020, 2019, 2018, 2017, 2016" | split: ", " %}
{% assign monthlist= "12, 11, 10, 09, 08, 07, 06, 05, 04, 03, 02, 01" | split: ", " %}

{% comment %}
Go through the list and produce a breakdown of the events in reverse
chronological order, grouped by months
{% endcomment %}

{%- include get_all_events.html -%}

{% for yearidx in yearlist %}
{% for monthidx in monthlist %}
 {% assign selected_array = "" | split: "," %}
 {% for event in all_events  %}
   {% assign eventyear = event.startdate | date: "%Y" %}
   {% assign eventmonth = event.startdate | date: "%m" %}
   {% if eventyear == yearidx and eventmonth == monthidx %}
      {% assign selected_array = selected_array | push: event %}
   {% endif %}
 {% endfor %}

<ul>
{% assign hdrprint = true %}
{% for event in selected_array %}
  {% if hdrprint == true %}
    <br><h5>{{event.startdate | date: "%B, %Y"}}</h5>
    {% assign hdrprint = false %}
  {% endif %}
  <li>{{event.startdate | date: "%-d %b" }}{{event.enddate | date: " - %-d %b" }}, {{event.startdate | date: "%Y" }} - <a href="{{event.meetingurl}}">{{event.name}}</a> (<i>{{event.location}}</i>)
  {% if event.abstractdeadline != null %}
    {% assign abs_date = event.abstractdeadline | date_to_long_string %}
    (Abstract deadline: {{abs_date}})
  {% endif %}
</li>
{% endfor %}
</ul>

{% endfor %}
{% endfor %}
<br>

