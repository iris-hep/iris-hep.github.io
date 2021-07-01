---
permalink: /open-science
layout: presentations
title: Open Science Publications
draft: true
---

## Related publications about Open Science

For reference we include links to important prior and related work
done by research groups involved with IRIS-HEP, even if not funded through
IRIS-HEP.

{% assign sorted_publications = site.data['sorted_open_science_publications'] %}
{% assign physics_pubs = sorted_publications | where_exp: "item", "item.open-science-cat contains 'physics'" %}
{% assign ml_pubs = sorted_publications | where_exp: "item", "item.open-science-cat contains 'ml'" %}

{% if physics_pubs.size > 0 %}
### Physics

<ul>
  {% for pub in physics_pubs %}
    <li> {% include print_pub.html pub=pub %} </li>
  {% endfor %}
</ul>
{% endif %}

{% if ml_pubs.size > 0 %}
## ML

<ul>
  {% for pub in ml_pubs %}
    <li> {% include print_pub.html pub=pub %} </li>
  {% endfor %}
</ul>
{% endif %}
