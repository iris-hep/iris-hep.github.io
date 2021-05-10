---
permalink: /presentations/byperson.html
layout: presentations
title: Presentations by Person
---

{% include institution_list.html %}

<h2>Presentations by the IRIS-HEP team</h2>
{% assign prescount = 0 %}

{% for uniindex in institution_list %}
{% assign uni = site.data.universities[uniindex] %}
  {% for member in uni.personnel %}
     {% if site.data.people[member].presentations.size > 0 %}
       {% assign presentationlist = site.data.people[member].presentations | sort: "date" | reverse %}
     {% else %}
       {% assign presentationlist = site.data.people[member].presentations %}
     {% endif %}
<h4>{{site.data.people[member].name}} - {{site.data.people[member].institution}}</h4>
<ul>
     {% for talk in presentationlist %}
         {% assign prescount = prescount | plus: "1" %}
         <li>
           {%- include print_pres.html talk=talk -%}
         </li>

     {% endfor %}
</ul>
  {% endfor %}
{% endfor %}

Total presentations: {{ prescount }}.


