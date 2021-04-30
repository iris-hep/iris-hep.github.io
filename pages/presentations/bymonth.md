---
permalink: /presentations/bymonth.html
layout: presentations
title: Presentations by Month
redirect_from: "/presentations/all"
---

{% assign sorted_presentations = site.data['sorted_presentations'] %}


<!--
  0     1       2      3       4          5           6          7            8
date | name | title | url | meeting | meetingurl | project | focus_area | institution
-->

<h2>Presentations by the IRIS-HEP team</h2>
{% assign prescount = 0 %}

<ul>
{% assign prev_header = "" %}
{% for talk in sorted_presentations %}
  {% assign talk_date = talk.date | date: "%B, %Y" %}
  {% if prev_header != talk_date %}
</ul>
<h4> {{ talk_date }} </h4>
<ul>
    {% assign prev_header =  talk_date %}
  {% endif %}

  <li>
    {%- include print_pres.html talk=talk -%}
  </li>

  {% assign prescount = prescount | plus: "1" %}
{% endfor %}
</ul>

Total presentations: {{ prescount }}.
