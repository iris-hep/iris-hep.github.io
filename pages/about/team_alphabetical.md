---
permalink: /about/team_alphabetical.html
layout: people
title: Institute Team
---

{%- assign sorted_mapping = "," | split:"," -%}
{%- for member in site.data.people -%}
  {%- assign sortable_name = member[1].name | split:" " | reverse | join:" " -%}
  {%- capture item -%}
    {{sortable_name}};{{member[0]}}
  {%- endcapture -%}
  {%- assign sorted_mapping = sorted_mapping | push: item -%}
{%- endfor -%}
{%- assign sorted_people = sorted_mapping | sort -%}

<h1>Full Team</h1><br>

<div class="container-fluid">
<div class="row">
{% for member in sorted_people %}
  {%- assign item = member | split:";" -%}
  {%- assign item = item[1] -%}
  {% assign person = site.data.people[item] %}
  {% include standard_person_card.md %}
  <br>
{% endfor %}
</div>
</div>

