---
permalink: /docs/webdesign.html
layout: default
title: "Website design"
pagetype: doc
---

## Filters

You can read about the filters available [for Jekyll](https://jekyllrb.com/docs/liquid/filters/) or the base [Liquid](https://shopify.github.io/liquid/filters/). To simplify working with the website and to avoid manual loops in liquid, we also provide the following filters:

### General filters

These are not specific to IRIS-HEP's design.

#### `basename`

This gives you the basename from the file. You can optionally give an argument; unlike Ruby, `".*"` is the default.

{% raw %}
```
{{ "/my/file.txt" | basename }} -> "file"
{{ "/my/file.txt" | basename: ""}} -> "file.txt"
```
{% endraw %}

#### `keys` / `values`

For a hash (dict in Python), these filters pull out the array of keys or values.

{% raw %}
```
{{ site.data.people | keys }} -> ["person1", "person2", ...]
{{ site.data.people | values }} -> [{"name: "Person 1", ...]
```
{% endraw %}

#### `ensure_array` / `ensure_arrays`

For an object, make sure it is an array. Anything other than an array becomes a length-one array, with the exception of nil, which becomes an empty array. This is useful for allowing a string or a list in a yaml file. `ensure_arrays` does the same thing for an array of items that should be an array of arrays.

{% raw %}
```
{{ nil | ensure_array }} -> []
{{ "hi" | ensure_array }} -> ["hi"]
```
{% endraw %}

#### `flat_map`

For an array of arrays, this flattens it to a single array.

{% raw %}
```
{{ nested_array | flat_map }} -> ["a1", "a2", "b1", ...]
```
{% endraw %}

#### `where_overlap`

This will return the overlapping items between an array of hashes (dicts) and an array (treating them as unordered sets). You give it a key to compare on.

{% raw %}
```
{{ dict | where_overlap: "key", other_array }}
```
{% endraw %}

#### `where_day_range` / `where_month_range`

These select objects with dates from a range of values. You can specify the start and end day (or month), in time before today. If you leave of the stop (nil), it is endless. You specify the key to look up the date on.

{% raw %}
```
{{ object_array | where_day_range: "eventdate", 10, 0 }} -> Select events during the last 10 days
{{ object_array | where_day_range: "eventdate", 0 }} -> Select upcoming events
{{ object_array | where_month_range: "eventdate", 3, 1 }} -> Select events from 1-3 months ago.
```
{% endraw %}

#### `puts`

This does nothing, but prints out the contents to the screen when compiling. Only useful for debugging.

{% raw %}
```
{{ "Hello logs!" | puts }}
```
{% endraw %}

#### `hash_fetch`

This will fetch items from a hash (dict) using an array, returning the value if the key is in the hash, and nil for array items that are not keys in the hash.

{% raw %}
```
{{ key_array | hash_fetch: hash }} -> value_array
```
{% endraw %}

### `last_name_sort`

This sorts an array of hashes that include normal ordered names in a key by by last name.

{% raw %}
```
{{ people | last_name_sort: "name" }} -> {"name": "Zee Alpha", ...
```
{% endraw %}


### IRIS-HEP specific filters

There are also some filters specific to IRIS-HEP.

#### `print_date_range` / `print_date_range_month`

You can pretty-print a range of dates at the day level or month level.

{% raw %}
```
{{ start_date | print_date_range: stop_date }} -> start day - stop day
{{ start_date | print_date_range_month: stop_date }} -> start month - stop month
```
{% endraw %}

#### `smart_title_sort`

This sorts pages by "title", also taking into account "position", if it exists.

{% raw %}
```
{{ site.pages | smart_title_sort }} -> Sorted pages
```
{% endraw %}

---

## Tags / Blocks

### General tags / blocks

#### `raise_error` (tag)

This will raise an error and stop processing, giving the line number and filename where the error occurred, along with a given error message. Double-bracket expansions are performed in the message.

{% raw %}
```
{% raise_error "This failed to process!" %}
```
{% endraw %}

### IRIS-HEP specific tags / blocks

These are designed for IRIS-HEP, and simplify common needs. They are much faster than includes, and more powerful.

#### `expandable` (block)

This block will make an expandable list. You give it the number of non-expanded items, and the rest will have a expand button. Inside the block, you have access to the "expandable" item, which is the current looping item.

{% raw %}
```
{% expandable my_array 10 %}
  {{ expandable }}
{% endexpandable%}
```
{% endraw %}

