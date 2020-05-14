---
permalink: /about/team_alphabetical.html
layout: people
title: Institute Team
---

{% include institution_list.html %}


{%- assign valid_people_ids = "" | split: "," -%}
{%- for uniindex in institution_list -%}
  {%- assign univ = site.data.universities[uniindex] -%}
  {%- for memberid in univ.personnel -%}
    {%- assign valid_people_ids = valid_people_ids | push: memberid -%}
  {%- endfor -%}
{%- endfor -%}


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
  {%- assign pair = member | split:";" -%}
  {%- assign memberid = pair[1] -%}
  {%- if valid_people_ids contains memberid -%}
    {% assign person = site.data.people[memberid] %}
    {% include standard_person_card.md %}
  {% endif %}
{% endfor %}
</div>
</div>

