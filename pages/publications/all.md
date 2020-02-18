---
permalink: /publications/all.html
layout: presentations
title: Publications
draft: false
---

## Publications by the IRIS-HEP team

{% assign doPublications = 0 %}
{% include get_pub_list.html %}


<ul>
  {% for pub in sorted_publications %}
    {% if pub.citation-count and pub.citation-count > 0 %}
      {% assign cited = " [" | append: pub.citation-count | append: " citations]" %}
      {% if pub.inspire-id %}
        {% capture cited %} <a href='http://inspirehep.net/record/{{pub.inspire-id}}/citations'>{{cited}}</a>{% endcapture %}
      {% endif %}
    {% else %}
      {% assign cited = "" %}
    {% endif %}
    <li> <a href="{{ pub.link }}">{{ pub.title }}</a>, {{ pub.citation }} ({{ pub.date | date_to_string }}){{ cited }}. </li>
  {% endfor %}
</ul>


