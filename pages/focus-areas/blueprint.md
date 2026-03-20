---
permalink: /blueprint.html
layout: focus-area
title: Blueprints
short_title: blueprint
pagetype: focus-area
---


  The Blueprint Activity is designed to inform the development and evolution of the IRIS-HEP strategic vision. At its core, it is a [series of workshops](https://indico.cern.ch/category/11329) that bring together IRIS-HEP team members, key stakeholders and domain experts from disciplines of importance to the Institute’s mission. The Blueprint Activity facilitates the Institute's role as an intellectual hub for software and computing R&D in high-energy particle physics and beyond.

![Blueprint](/assets/images/blueprint-process.png){:style="display:block; margin-left: auto; margin-right: auto; width: 50%"}

{% assign blueprints = site.blueprints | where_exp:"item", "item.visible != false and item.status == 'planned'" | sort: 'meetingdate' | reverse -%}

## Planned
{% include list_blueprints.html blueprints=blueprints %}

{% assign blueprints = site.blueprints | where_exp:"item", "item.visible != false and item.status == 'complete'" | sort: 'meetingdate' | reverse -%}

<br/>

## Completed
{% include list_blueprints.html blueprints=blueprints %}
<br/>

<br/>
<br/>
