---
permalink: /about/team.html
layout: people
title: Institute Team
---

{% include institution_list.html %}


<h1>Full Team</h1><br>

<div class="container-fluid">
  <div class="row">
    {% for uniindex in institution_list %}
      {%- assign univ = site.data.universities[uniindex] -%}

      {%- assign sorted_mapping = "" | split:"," -%}
      {%- for memberid in univ.personnel -%}
        {%- assign member = site.data.people[memberid] -%}
        {%- assign sortable_name = member.name | split:" " | reverse | join:" " -%}
        {%- capture item -%}
          {{sortable_name}};{{memberid}}
        {%- endcapture -%}
        {%- assign sorted_mapping = sorted_mapping | push: item -%}
      {%- endfor -%}
      {%- assign sorted_people = sorted_mapping | sort -%}

      {% for member in sorted_people %}
           {%- assign item = member | split:";" -%}
           {%- assign item = item[1] -%}
           {% assign person = site.data.people[item] %}
           {% if person.active and person.active == true %}
           {% include standard_person_card.md %}
           {% endif %}
      {% endfor %}
    {% endfor %}
  </div>
</div>

<br>
<h1>Former Team Members</h1><br>

<div class="container-fluid">
  <div class="row">
    {% for uniindex in institution_list %}
      {%- assign univ = site.data.universities[uniindex] -%}

      {%- assign sorted_mapping = "" | split:"," -%}
      {%- for memberid in univ.personnel -%}
        {%- assign member = site.data.people[memberid] -%}
        {%- assign sortable_name = member.name | split:" " | reverse | join:" " -%}
        {%- capture item -%}
          {{sortable_name}};{{memberid}}
        {%- endcapture -%}
        {%- assign sorted_mapping = sorted_mapping | push: item -%}
      {%- endfor -%}
      {%- assign sorted_people = sorted_mapping | sort -%}

      {% for member in sorted_people %}
           {%- assign item = member | split:";" -%}
           {%- assign item = item[1] -%}
           {% assign person = site.data.people[item] %}
           {% if person.active and person.active == true %}
           {% else %}
           {% include standard_person_card.md %}
           {% endif %}
      {% endfor %}
    {% endfor %}
  </div>
</div>


