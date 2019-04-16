### Presentations
{% include get_pres_list.html %}
{% for pres_item in sorted_pres %}
{% if pres_item.size  > 20 %}
{% assign pres = pres_item | split: "|" %}
{% if pres[0] contains '2' %}
{% assign pres_project = pres[6] | strip %}
{% if pres_project  == include.shortname  %}
* [{{pres[2]}}]({{pres[2]}}) ({{pres[1]}}, {{pres[0] | date_to_string}}) at [{{pres[4]}}]({{pres[5]}})
{% endif %}
{% endif %}
{% endif %}
{% endfor %}
