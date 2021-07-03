---
permalink: /presentations/byperson.html
layout: presentations
title: Presentations by Person
---

{% assign empty-list = "" | split: "," %}

<h2>Presentations by the IRIS-HEP team</h2>
{% assign prescount = 0 %}

{% assign members = site.data.people | where_exp:"item", "item.active and item.hidden != true"
                                     | last_name_sort: "name" %}
{% for member in members %}
  {%- assign presentationlist = member.presentations | default: empty-list | sort: "date" | reverse -%}
  {%- if presentationlist.size > 0 -%}
    <h4>{{member.name}} - {{member.institution}}</h4><ul>
      {%- for talk in presentationlist -%}
        {%- assign prescount = prescount | plus: "1" -%}
        <li>
          {%- include print_pres.html talk=talk -%}
        </li>
      {%- endfor- %}
    </ul>
  {%- endif -%}
{%- endfor -%}

Total presentations: {{ prescount }}.

<h2>Presentations by former IRIS-HEP team Members</h2>


{% assign prescount = 0 %}

{% assign members = site.data.people | where_exp: "item", "item.active == nil or item.active == false and item.hidden != true"
                                     | last_name_sort: "name" %}
{% for member in members %}
  {%- assign presentationlist = member.presentations | default: empty-list | sort: "date" | reverse -%}
  {%- if presentationlist.size > 0 -%}
    <h4>{{member.name}} - {{member.institution}}</h4><ul>
      {%- for talk in presentationlist -%}
        {%- assign prescount = prescount | plus: "1" -%}
        <li>
          {%- include print_pres.html talk=talk -%}
        </li>
      {%- endfor- %}
    </ul>
  {%- endif -%}
{%- endfor -%}

Total presentations: {{ prescount }}.
