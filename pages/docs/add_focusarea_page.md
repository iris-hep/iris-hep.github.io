---
permalink: /docs/add_focusarea_page.html
layout: default
title: Adding a focus-area page to the website
pagetype: doc
---

## How to add a focus-area page to the IRIS-HEP site

We would like each IRIS-HEP focus-area and other IRIS-HEP organizations (SSL, etc)
to have an update to date project web site. This will
be useful for attracting collaborators, advertising your work and (more mundane) reporting.

Getting started is easy. Add a page for your area under [pages/focus-areas](https://github.com/iris-hep/iris-hep.github.io/tree/master/pages/focus-areas).
From there you can follow an example, but here is some information get to you started

The required elements of the top matter are:
  * permalink: The location for your webpage (suggestion is /area-shortname.html)
  * layout: Use 'focus-area'
  * pagetype: Use 'focus-area'
  * title: The area title
  * shortname: A more concise title (this is the key to use to label projects, publications and presentations)

Then the body of the page should be a paragraph or two about the area. Projects, publications
and presentations will be added in a standard way from the
[project pages](https://github.com/iris-hep/iris-hep.github.io/tree/master/pages/projects),
the [publications](https://github.com/iris-hep/iris-hep.github.io/tree/master/_data/publications)
and [presentations listed for each team member](https://github.com/iris-hep/iris-hep.github.io/tree/master/_data/people).
Note that each of these sections (projects, publications, presentations) will only appear if there is at least one
item to be listed.

Want to test locally before making a pull request? [This should work](/docs/webdev).

Get help: Reach out on the [Slack website channel](https://iris-hep.slack.com/messages/website/) or contact David Lange.

