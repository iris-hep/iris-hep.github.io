---
permalink: /blueprint-dashboard.html
layout: default
title: IRIS/HEP Blueprint Dashboard
---


{% assign indico_list = site.data.indico.blueprint | values | sort: 'startdate' %}
{% assign grouping = indico_list | group_by_exp: "item", "item.startdate | date: '%Y'" %}

<!-- {% assign completed = grouping | where_exp:"item", "item.startdate < site.time" %} -->

{% for pair in grouping %}
  <h5>{{ pair.name }}</h5>
  <ul>
  {% for event in pair.items %}
    <script>console.log('{{pair}}');</script>
    <li> {{event.startdate | date: "%-d %b" }}{{event.enddate | date: " - %-d %b" }}, {{event.startdate | date: "%Y" }} - <a href="{{event.meetingurl}}">{{event.name}}</a>
    {%- if event.youtube.size > 4 %} - (<a href="{{event.youtube}}">Watch the meeting recording</a>){%- endif -%}
    <!-- {% assign event_id = event.meetingurl | remove: "https://indico.cern.ch/event" | remove: "/" %} -->
    {% assign new_info = site.blueprints | where:"meetingurl",  event.meetingurl | first %}
    <script>console.log('{{event.startdate}}');</script>
    {% if new_info %} {{new_info.status}} {% endif %}
    <!-- <script>console.log('{{new_info}}');</script> -->
    </li>
  {% endfor %}
  </ul>
{% endfor %}


{% assign proposals = site.blueprints | where_exp: "item", "item.status != 'complete'" %}
<h5>Proposed<h5>
<ul>
{% for event in proposals %}
    <li> {{event.topic}}
    </li>
{% endfor %}
</ul>