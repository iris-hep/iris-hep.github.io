---
permalink: /docs/add_presentation.html
layout: default
title: Adding a presentation
pagetype: doc
---

## Add new presentations

There is a section for presentations in your user file (in
[`_data/people`](https://github.com/iris-hep/iris-hep.github.io/tree/master/_data/people)).
We would like to keep track of the presentations made by IRIS-HEP team members,
with the following criteria:

  * Only presentations related to IRIS-HEP itself should be included.
  * Any presentation in a "public" meeting should be included. This includes
    presentations made in experiment meetings, even if they are protected such
    that the presentation and meeting links are not world visible.
  * Presentations in the IRIS-HEP topical meetings should be included.
  * Minor presentations in internal "working" meetings of IRIS-HEP do not
    need to be added.
  * Presentations, lectures, etc. as part of training events should be included.
  * Posters at workshops and conferences can also be included. You can add "(poster)" at the end of the title. Include a link to a pdf of the poster.
  * Multiple presenters are not yet supported. A new field might be added with co-presenters in the future.

The meaning of the fields is the following:

  * `title` - the title of the talk: you made need to place it in double quotes if certain characters like a colon space ": " are included in the title.
  * `date` - the date on which the presentation was made, in the numeric format "YYYY-MM-DD".
  * `url` - this should be a direct URL to the presentation or page containing the presentation. For Indico, link to the contribution, not the PDF or other links. Required; leave blank if there's really no related URL.
  * `meeting` - the name of the meeting.
  * `meetingurl` - the URL for the meeting in which the presentation was made.
  * `location` - optionally list the location of a meeting if it was a workshop or dedicated gathering. Meetings that are mostly in Vidyo can use "Virtual".
  * `focus-area` - optionally list the relevant focus area for this presentation, using its short name, i.e. one of [ia,ssl,ssc,doma,as,osglhc,blueprint,core]. Can be a list, leave blank if none.
  * `project` - optionally list the relevant project for this presentation, using its short name, i.e. those found in the [pages/projects/](https://github.com/iris-hep/iris-hep.github.io/tree/master/pages/projects) area. Can be a list, leave blank if none.

This `presentation:` section is a list, so that should look like:

```yaml
presentations:
- title: My Title
  date: YYYY-MM-DD
  url:
- title: Another one
  date: YYYY-MM-DD
  url: ...
```
