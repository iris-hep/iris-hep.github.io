---
permalink: /fellow_projects.html
layout: default
title: Open IRIS-HEP fellow projects
---
<center>
<h3> Open IRIS-HEP fellow projects</h3>
</center>

<br>
This page lists a number of known software R&D projects of interest
to IRIS-HEP researchers. (This page will be updated from time to time,
so check back and reload to see if new projects have been added.)
Contact the mentors for more information about any of these projects! Be sure you [have read the guidelines](/fellows.html).

{%- include get_all_fellow_projects.html -%}

<ul>
{% for project in all_fellow_projects  %}

  {% if project.open %}
    {% capture full-proj %}**{{ project.title }}**: {{ project.description }}{% endcapture %}
    <li style="margin-bottom: 10px;"> {{full-proj | markdownify | remove: '<p>' | remove: '</p>'}}
    (Contact(s):
    {% include list_project_team.html team=project.contacts inline="true" %}
    ) </li>
  {% endif %}
{% endfor %}
</ul>

