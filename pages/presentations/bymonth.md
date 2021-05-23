---
permalink: /presentations/bymonth.html
layout: presentations
title: Presentations by Month
redirect_from: "/presentations/all"
---

{% assign groups = site.data['sorted_presentations'] | group_by_exp: "item", "item.date | date: '%B, %Y'" %}


<h2>Presentations by the IRIS-HEP team</h2>

{% for pair in groups %}
  <h4> {{ pair.name }} </h4>
  <ul>
    {% for talk in pair.items %}
      <li>
        {%- include print_pres.html talk=talk -%}
      </li>
    {% endfor %}
  </ul>
{% endfor %}

Total presentations: {{ site.data['sorted_presentations'].size }}.
