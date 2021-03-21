---
permalink: /fellow_projects.html
layout: default
title: Open IRIS-HEP fellow projects
---
<center>
<h3> Open IRIS-HEP fellow projects</h3>
</center>

<br>
Contact the mentors for more information about any of these projects!


{%- include get_all_fellow_projects.html -%}

<ul>
{% for project in sorted_fellow_projects  %}

  {% if project.open %}
    {% capture full-proj %}{{ project.title }}: {{ project.description }}{% endcapture %}
    <li style="margin-bottom: 10px;"> {{full-proj | markdownify | remove: '<p>' | remove: '</p>'}}
    (Contact(s):
    {% for contact in project.contacts %}
      {% assign written = false %}
      {% if contact contains "](" %}
      {% elsif contact contains "@" %}
        <a href="mailto:{{contact}}"> <em>{{contact}}</em> </a>
        {% assign written = true %}
      {% else %}
        {% for person_hash in site.data.people -%}
          {% assign person = person_hash[1] -%}
          {% if person.shortname == contact %}
            {% if person.e-mail %}
              <a href="mailto:{{person.e-mail}}"> <em>{{person.name}}</em> </a>
              {% assign written = true %}
            {% else %}
              <em>{{person.name}}</em>
              {% assign written = true %}
            {% endif %}
          {% endif %}
        {% endfor %}
      {% endif %}
      {% unless written %}
        <em>{{ contact | markdownify | remove: '<p>' | remove: '</p>' }}</em>
      {% endunless %}
    {% endfor %}
    ) </li>
  {% endif %}
{% endfor %}
</ul>

