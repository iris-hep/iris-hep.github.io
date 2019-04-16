### Publications
{% include get_pub_list.html %}
{% for pub_item in sorted_pubs %}
{% if pub_item.size  > 20 %}
{% assign pub = pub_item | split: "|" %}
{% if pub[0] contains '2' %}
{% assign pub_project = pub[4] | strip %}
{% if pub_project  == include.shortname  %}
* {{ pub[1] }}, [{{pub[2]}}]({{pub[3]}}) ({{ pub[0] | date_to_string }}). 
{% endif %}
{% endif %}
{% endif %}
{% endfor %}
