---
permalink: /docs/nsfpar.html
layout: default
title: NSF PAR listing
pagetype: doc
---

## Publication listings

This is a list of the publications, along with the NSF PAR status.

{% assign sorted_publications = site.data['sorted_publications'] %}
{% assign doPublications = 0 %}

### TODO: Needs an NSF PAR ID

For each of these, `nsf-par-id: <number>` should be added to the datafile. If
an `nsf-par-id` really is not needed, set `needs-nsf-par: false` explicitly.

<ul>
  {% for pub in sorted_publications %}
    {% unless pub.nsf-par-id -%}{%- if pub.needs-nsf-par -%}{%- unless pub.related-work -%}
      <li>
        <code class="highlighter-rouge">_data/publications/{{ pub.filename }}.yml</code>:
        {% include print_pub.html pub=pub -%}
        {%- if pub.comment %} <span style="color:darkgreen;font-style:italic;">{{ pub.comment }}</span> {%- endif -%}
      </li>
    {%- endunless -%}{%- endif -%}{%- endunless -%}
  {% endfor %}
</ul>


### Has an NSF PAR ID

For each of these, `nsf-par-id` has been added.

<ul>
  {% for pub in sorted_publications %}
    {% if pub.nsf-par-id -%}{%- unless pub.related-work -%}
      <li>
        <code class="highlighter-rouge">_data/publications/{{ pub.filename }}.yml</code>:
        {% include print_pub.html pub=pub -%}
        {%- if pub.comment %} <span style="color:darkgreen;font-style:italic;">{{ pub.comment }}</span> {%- endif -%}
      </li>
    {%- endunless -%}{%- endif -%}
  {% endfor %}
</ul>


### No explicit request for ID

These do not have NSF PAR IDs, and probably do not need one; either because
they are arXiv only, have an explicit false for `needs-nsf-par`, or were
manually entered. Many of the arXiv publications are preprints for papers submitted to journals or to the proceedings of various conferences, and will eventually need an NSF PAR ID once published.

<ul>
  {% for pub in sorted_publications %}
    {% unless pub.nsf-par-id -%}{%- unless pub.needs-nsf-par -%}{%- unless pub.related-work -%}
      <li>
        <code class="highlighter-rouge">_data/publications/{{ pub.filename }}.yml</code>:
        {% include print_pub.html pub=pub -%}
        {%- if pub.comment %} <span style="color:darkgreen;font-style:italic;">{{ pub.comment }}</span> {%- endif -%}
      </li>
    {%- endunless -%}{%- endunless -%}{%- endunless -%}
  {% endfor %}
</ul>

### Prior or related work

These do not need to have NSF PAR IDs (at least for IRIS-HEP purposes) as
they are prior or related work.

<ul>
  {% for pub in sorted_publications %}
    {%- if pub.related-work -%}
      <li>
        <code class="highlighter-rouge">_data/publications/{{ pub.filename }}.yml</code>:
        {% include print_pub.html pub=pub -%}
        {%- if pub.comment %} <span style="color:darkgreen;font-style:italic;">{{ pub.comment }}</span> {%- endif -%}
      </li>
    {%- endif -%}
  {% endfor %}
</ul>

