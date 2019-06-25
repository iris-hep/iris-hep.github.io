---
permalink: /publications/all.html
layout: default
title: All Publications
draft: false
---

# All Publications

{% assign doPublications = 0 %}
{% include get_pub_list.html %}

{% for pub_item in sorted_pubs %}
    {% if pub_item.size  > 20 %}
        {% assign pub = pub_item | split: "|" %}
        {% if pub[0] contains '2' %}
            {% assign doPublications = 1 %}
            {% break %}
        {% endif %}
    {% endif %}
{% endfor %}



{% if doPublications == 1 %}


<ul>
  {% for pub_item in sorted_pubs %}
    {% if pub_item.size  > 20 %}
      {% assign pub = pub_item | split: "|" %}
      {% if pub[0] contains '2' %}
        {% assign pub_fa = pub[5] | strip %}
        <li> {{ pub[1] }}, <a href="{{pub[3]}}">{{pub[2]}}</a> ({{ pub[0] | date_to_string }}).</li>
      {% endif %}
    {% endif %}
  {% endfor %}
</ul>

{% endif %}


