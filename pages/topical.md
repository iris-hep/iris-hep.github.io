---
permalink: /topical.html
layout: default
title: IRIS-HEP Topical Meetings
---
<center>
<h3> IRIS-HEP Topical Meetings</h3>
</center>

<br>
IRIS-HEP topical meetings cover one or more presentations involving
IRIS-HEP researchers or from related research areas. They are
typically held Mondays 17:30 GVA and Wednesdays 18:00 GVA. Vidyo
connections are always available and meetings are usually recorded.
Find all topical meeting agendas
[here](https://indico.cern.ch/category/10570/).

{% comment %}
Go through the list and produce a breakdown of the events in reverse
chronological order, grouped by months
{% endcomment %}

{% include get_indico_list.html %}
{% assign grouping = indico_list | reverse | group_by_exp: "item", "item.startdate | date: '%B, %Y'"%}

{% for pair in grouping %}
  <h5>{{ pair.name }}</h5>
  <ul>
  {% for event in pair.items %}
    <li> {{event.startdate | date: "%-d %b" }}{{event.enddate | date: " - %-d %b" }}, {{event.startdate | date: "%Y" }} - <a href="{{event.meetingurl}}">{{event.name}}</a>
    {%- if event.youtube.size > 4 %} - (<a href="{{event.youtube}}">Watch the meeting recording</a>){%- endif -%}
    </li>
  {% endfor %}
  </ul>
{% endfor %}

