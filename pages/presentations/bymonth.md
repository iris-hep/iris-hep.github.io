---
permalink: /presentations/bymonth.html
layout: presentations
title: Presentations by Month
redirect_from: "/presentations/all"
---

{% include get_pres_list.html %}


<!--
  0     1       2      3       4          5           6          7            8
date | name | title | url | meeting | meetingurl | project | focus_area | institution
-->

<h2>Presentations by the IRIS-HEP team</h2>
{% assign prescount = 0 %}

<ul>
{% assign prev_header = "" %}
{% for talk in sorted_presentations %}
  {% assign member = site.data.people[talk.member].name %}
  {% assign talk_date = talk.date | date: "%B, %Y" %}
  {% if prev_header != talk_date %}
</ul>
<h4> {{ talk_date }} </h4>
<ul>
    {% assign prev_header =  talk_date %}
  {% endif %}

  {% assign prettydate = talk.date | date: "%-d %b %Y" %}
  <li> {{prettydate}} - <a href="{{talk.url}}">"{{talk.title}}"</a>, {{member}}, <a href="{{talk.meetingurl}}">{{talk.meeting}}</a></li>
  {% assign prescount = prescount | plus: "1" %}
{% endfor %}
</ul>

Total presentations: {{ prescount }}.
