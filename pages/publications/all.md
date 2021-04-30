---
permalink: /publications/all.html
layout: presentations
title: Publications
draft: false
---

## Publications by the IRIS-HEP team

{% assign sorted_publications = site.data['sorted_publications'] %}

<ul>
  {% for pub in sorted_publications %}
    {%- unless pub.related-work %}
      <li> {% include print_pub.html pub=pub %} </li>
    {%- endunless %}
  {% endfor %}
</ul>

## Prior or related publications

For reference we also include some links to important prior and related work
done by research groups involved with IRIS-HEP, even if not funded through
IRIS-HEP.

<ul>
  {% for pub in sorted_publications %}
    {%- if pub.related-work %}
      <li> {% include print_pub.html pub=pub %} </li>
    {%- endif %}
  {% endfor %}
</ul>


