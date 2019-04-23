{% include get_pres_list.html %}
{% assign has_presentation = false %}
{% for pres_item in sorted_pres %}
  {% if pres_item.size  > 20 %}
    {% assign pres = pres_item | split: "|" %}
    {% if pres[0] contains '2' %}
      {% assign pres_project = pres[6] | strip %}
      {% if pres_project contains include.shortname  %}
        {% assign has_presentation = true %}
        {% break %}
      {% endif %}
    {% endif %}
  {% endif %}
{% endfor %}

{% if has_presentation %}
### Presentations
<ul>
{% for pres_item in sorted_pres %}
{% if pres_item.size  > 20 %}
{% assign pres = pres_item | split: "|" %}
{% if pres[0] contains '2' %}
{% assign pres_project = pres[6] | strip %}
{% if pres_project contains include.shortname  %}
<li> <a href="{{pres[3]}}">{{pres[2]}}</a> ({{pres[1]}}, {{pres[0] | date_to_string}}) at <a href="{{pres[5]}}">{{pres[4]}}</a> </li>
{% endif %}
{% endif %}
{% endif %}
{% endfor %}
</ul>
{% endif %}
