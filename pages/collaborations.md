---
permalink: /collaborations.html
layout: default
title: Collaborations and Related Projects
---

# Collaborations and Related Projects

The IRIS-HEP project and team members are part of a larger ecosystem of
projects and collaborations focused on both high energy physics research and
the development of software and computing systems to support science. These
include:

{% for collab in site.data.collabcats %}
#### {{ collab.name }}
{%    for proj in site.data.collaborations[collab.id] %}
* [{{ proj.name }}]({{ proj.url }})
      {%- if proj.shortname -%}
          ({{ proj.shortname }})
      {%- endif -%}
      {%- if proj.description -%}
        : {{ proj.description }}
      {%- endif -%}
      {%- if proj.awards -%}
        {{ " -- " }}
        {%- assign awardlist = "" | split: "," -%}
        {%- for award in proj.awards -%}
           {%- capture awardtxt -%}
             [NSF&nbsp;{{award.type}}-{{award.number}}](https://www.nsf.gov/awardsearch/showAward?AWD_ID={{award.number}}&HistoricalAwards=false)
           {%- endcapture-%}
           {% assign awardlist = awardlist | push: awardtxt %}
        {%- endfor -%}
        {{ awardlist | join: ", " }}
    {%-  endif -%}
  {%- endfor %}
{% endfor %}
