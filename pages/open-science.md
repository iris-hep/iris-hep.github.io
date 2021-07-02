---
permalink: /open-science
layout: presentations
title: Open Science Publications
---

## Related publications about Open Science

For reference we include links to important prior and related work
done by research groups involved with IRIS-HEP, even if not funded through
IRIS-HEP.

{% assign sorted_publications = site.data['sorted_open_science_publications'] %}
{% assign physics_pubs = sorted_publications | where_exp: "item", "item.open-science-cat contains 'physics'" %}
{% assign algo_pubs = sorted_publications | where_exp: "item", "item.open-science-cat contains 'algo'" %}
{% assign general_pubs = sorted_publications | where_exp: "item", "item.open-science-cat contains 'general'" %}

{% if physics_pubs.size > 0 %}
### Physics results obtained using Open Data

<ul>
  {% for pub in physics_pubs %}
    <li> {% include print_pub.html pub=pub %}
    {%- if pub.comment -%} <span style="color:darkgreen;font-style:italic;"> {{ pub.comment }}</span> {%- endif -%}
    </li>
  {% endfor %}
</ul>
{% endif %}

{% if algo_pubs.size > 0 %}
### Use of Open Data to support software, machine learning and algorithms development

<ul>
  {% for pub in algo_pubs %}
    <li> {% include print_pub.html pub=pub %}
    {%- if pub.comment -%} <span style="color:darkgreen;font-style:italic;"> {{ pub.comment }}</span> {%- endif -%}
    </li>
  {% endfor %}
</ul>
{% endif %}

{% if general_pubs.size > 0 %}
### General publications about Open Data

<ul>
  {% for pub in general_pubs %}
    <li> {% include print_pub.html pub=pub %}
    {%- if pub.comment -%} <span style="color:darkgreen;font-style:italic;"> {{ pub.comment }}</span> {%- endif -%}
    </li>
  {% endfor %}
</ul>
{% endif %}


