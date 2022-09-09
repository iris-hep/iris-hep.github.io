---
permalink: /docs/add_project_page.html
layout: default
title: Adding a project page to the website
pagetype: doc
---

## How to add a project page to the IRIS-HEP site

We would like each IRIS-HEP project to have an update to date project web site. This will
be useful for attracting collaborators, advertising your work and (more mundane) reporting.

Getting started is easy. Add a page for your project under [pages/projects](https://github.com/iris-hep/iris-hep.github.io/tree/master/pages/projects).
From there you can follow an example, but here is some information get to you started

The required elements of the top matter are:
  * `layout`: Use 'project'
  * `pagetype`: Use 'project'
  * `title`: The project title
  * `shortname`: A more concise title. It must match the file name for your project (this is the key to use to label publications and presentations)
  * `image`: The location of an image to used on the focus area page for your project (should be roughly square)
  * `blurb`: A summary of your project in a few words to be used on the focus area page
  * `focus-area`: the shortname of the subarea in IRIS-HEP (examples are ia, doma, ssl)
  * `team`: The list of team members. List each team member by the shortname from their entry in [this directory](https://github.com/iris-hep/iris-hep.github.io/tree/master/_data/people).

Then you can layout the page in the way you wish. There are some helper functions
that will list your team, presentations and publications in a standard format. Please use these.
All of this information is driven by the people files and publication files. So if something is missing
from the list of presentations or publications it is most likely because the project field is missing
from the corresponding presentation or publication entry.

Want to test locally before making a pull request? [This should work](/docs/webdev).

Get help: Reach out on the [Slack website channel](https://iris-hep.slack.com/messages/website/) or contact David Lange.
