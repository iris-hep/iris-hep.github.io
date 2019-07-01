---
permalink: /presentations/byarea.html
layout: default
title: Presentations by Area
---

<h2>Presentations by the IRIS-HEP team</h2>

{% assign orderedlist = "cornell, indiana, mit, morgridge, nyu, princeton, stanford, chicago, cincinnati, uiuc, michigan, nebraska, berkeley, ucsc, ucsd, uprm, washington, wisconsin" | split: ", " %}
{% assign activities = site.pages | where: "layout", "focus-area" | where: "draft", "false" | sort: 'title' %}

{% for focusareapage in activities %}
  {% assign focusareatitle = focusareapage.title %}
  {% assign focusareaname = focusareapage.short_title %}
  <h4>{{ focusareatitle }}</h4>
  <ul>
  {% for uniindex in orderedlist %}
    {% assign uni = site.data.universities[uniindex] %}
    {% for member in uni.personnel %}
      {% assign presentationlist = site.data.people[member].presentations %}
      {% for talk in presentationlist %}
        {% assign talk-projects = talk.project %}
        {% if talk.focusarea == focusareaname %}
          <li> {{talk.date}} - <a href="{{talk.url}}">"{{talk.title}}"</a>, {{site.data.people[member].name}}, <a href="{{talk.meetingurl}}">{{talk.meeting}}</a></li>
        {% endif %}
      {% endfor %}
    {% endfor %}
  {% endfor %}
  </ul>
{% endfor %}


