---
permalink: /publications/all.html
layout: presentations
title: Publications
draft: false
---

## Publications by the IRIS-HEP team

{% include get_pub_list.html %}

<ul>
  {% for pub in sorted_publications %}
    {%- unless pub.related-work %}
      <li> {% include print_pub.html pub=pub %} </li>
    {%- endunless %}
  {% endfor %}
</ul>

## Prior or related publications

<ul>
  {% for pub in sorted_publications %}
    {%- if pub.related-work %}
      <li> {% include print_pub.html pub=pub %} </li>
    {%- endif %}
  {% endfor %}
</ul>


