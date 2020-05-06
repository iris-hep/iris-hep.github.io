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
    <li> {% include print_pub.html pub=pub %} </li>
  {% endfor %}
</ul>


