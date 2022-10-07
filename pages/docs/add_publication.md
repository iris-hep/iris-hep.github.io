---
permalink: /docs/add_publication.html
layout: default
title: Adding a publication to the website
pagetype: doc
---

## How to add a publication to the IRIS-HEP site

We would like each IRIS-HEP related presentation to be listed on the website.
This will be useful for advertising your work and (more mundane) reporting.

#### Inspire

This is easiest if you have your paper's inspire ID, which we will assume for the purpose of this tutorial is 12345678. Make a new yaml file in  [_data/publications](https://github.com/iris-hep/iris-hep.github.io/tree/master/_data/publications) - you can click the new file button or [click here](https://github.com/iris-hep/iris-hep.github.io/new/master/_data/publications). Name your file `ID.yml`; in our example, it would be `12345678.yml` The contents of the file should look like this:

```yaml
inspire-id: 12345678
project: some-project
```

To find your inspire ID:
* Go to [https://inspirehep.net/literature](https://inspirehep.net/literature)
* Search for you paper title
* Click on your paper title and the URL will have the inspire-id at the end

The fields are:

* `inspire-id`: The ID of your paper. The other required fields in a general publication are filled out automatically from this
* `project`: Either a single project or a list of projects. Optional if your publication is not connected to any projects.
* `focus-area`: Either a single focus area or a list. Looked up from project if not given.


A more complicated example:

```yaml
inspire-id: 12345678
project:
- some-project
- another-project
focus-area:        # Only needed if the list above doesn't look up the right areas!
- as
- ia
```


#### General

If you want to put a publication in that is not in Inspire, these are the required fields. For an inspire-based publication, you can still override the defaults by specifying any of these fields, as well.

```yaml
title: My fantastic publication
link: https://www.cern.ch
date: 2018-12-10
citation: D. Lange et. al., Nature *10* 100 (2018)
focus-area: ia
project: some-project
```

---

Want to test locally before making a pull request? [This should work](/docs/webdev).

Get help: Reach out on the [Slack website channel](https://iris-hep.slack.com/messages/website/) or contact David Lange.
