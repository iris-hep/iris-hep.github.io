---
permalink: /about/team_alphabetical.html
layout: people
title: Institute Team
---

{% include institution_list.html %}
{% assign members = site.data.people | values
                                     | where_exp:"item", "item.active and item.hidden != true"
                                     | last_name_sort: "name" %}


<h1>Full Team</h1><br>

<div class="container-fluid">
<div class="row">
{% for person in members %}
    {% include standard_person_card.md person=person %}
{% endfor %}
</div>
</div>

