---
permalink: /docs/add_news.html
layout: default
title: Adding a news item to the website
pagetype: doc
---


## How to add a news post to the IRIS-HEP site

#### Names

[In Jekyll](https://jekyllrb.com/docs/posts/), posts must be named `_posts/YEAR-MONTH-DAY-TITLE.md`. We recommend that all images
for a post go into `assets/images/posts/YEAR-MONTH-DAY-*`, where you at least provide `assets/images/posts/YEAR-MONTH-DAY-TITLE-main.*` as
the main post image.

#### Front matter

Your news item will start with front matter. You should at least have:

```yaml
---
layout: irispost
title: <title here>
postimage: /assets/images/posts/<main image here>
---
```

There are several optional fields as well:

* `author`: The post author (your name, however you would like it displayed)
* `postimage-caption`: A caption string for the main post image. Will be added to the main image on the post page. Recommended for accessibility, if nothing else.
* `postbanner`: A very wide image to use as a banner across the top of the post.
* `summary`: Will replace the auto-summary with an explicit one for the IRIS-HEP main page, so the beginning text does not have to match.

#### Text

You should either use the summary field above, or insert the `<!--break-->` separator in your content. Everything above the break separator will be included in the summary, stripped of all HTML tags and formatting.

Beyond the normal markdown formatting and Jekyll includes, you also have a figure environment. It looks like this:

```
{%- raw %}
{% include figure.html
    file="/assets/images/posts/*"
    alt="<please include for accessibility>"
    caption="<optional>"
%}
{% endraw -%}
```

There is an optional `class` parameter, which can be one of `"right"` (the default) or `"center"`. You can also explicitly set style options using the `style` parameter and standard inline CSS syntax.

#### General comments

Please remember to check your post with different browser widths, and with dark mode enabled/disabled.
