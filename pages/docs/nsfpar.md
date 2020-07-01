---
permalink: /docs/nsfpar.html
layout: default
title: NSF PAR listing
pagetype: doc
---

## Publication listings

This is a list of the publications, along with the NSF PAR status.

{% assign doPublications = 0 %}
{% include get_pub_list.html %}

### TODO: Needs a NSF PAR ID

For each of these, `nsf-par-id: <number>` should be added to the datafile. If
an `nsf-par-id` really is not needed, set `needs-nsf-par: false` explicitly.

<ul>
  {% for pub in sorted_publications %}
    {% unless pub.nsf-par-id -%}{%- if pub.needs-nsf-par -%}
      <li>
        <code class="highlighter-rouge">_data/publications/{{ pub.filename }}.yml</code>:
        {% include print_pub.html pub=pub -%}
      </li>
    {%- endif -%}{%- endunless -%}
  {% endfor %}
</ul>


### Has an NSF PAR ID

For each of these, `nsf-par-id` has been added.

<ul>
  {% for pub in sorted_publications %}
    {% if pub.nsf-par-id -%}
      <li>
        <code class="highlighter-rouge">_data/publications/{{ pub.filename }}.yml</code>:
        {% include print_pub.html pub=pub -%}
      </li>
    {%- endif -%}
  {% endfor %}
</ul>


### No explicit request for ID

These to not have NSF PAR IDs, and probably do not need one; either because
they are arXiv only, have an explicit false for `needs-nsf-par`, or were
manually entered.

<ul>
  {% for pub in sorted_publications %}
    {% unless pub.nsf-par-id -%}{%- unless pub.needs-nsf-par -%}
      <li>
        <code class="highlighter-rouge">_data/publications/{{ pub.filename }}.yml</code>:
        {% include print_pub.html pub=pub -%}
      </li>
    {%- endunless -%}{%- endunless -%}
  {% endfor %}
</ul>
