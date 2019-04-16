### Presentations
{% include get_pres_list.html %}
{% for pres_item in sorted_pres %}
{% if pres_item.size  > 20 %}
{% assign pres = pres_item | split: "|" %}
{% if pres[0] contains '2' %}
{% assign pres_project = pres[6] | strip %}
{% if pres_project  == include.shortname  %}
* [{{item[2]}}]({{item[2]}}) ({{item[1]}}, {{item[0] | date_to_string}}) at [{{item[5]}}]({{item[4]}})
{% endif %}
{% endif %}
{% endif %}
{% endfor %}
