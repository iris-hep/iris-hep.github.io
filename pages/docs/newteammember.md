---
permalink: /docs/newteammember.html
layout: default
title: Information for new IRIS-HEP team members
pagetype: doc
---

### Things new IRIS-HEP team members need to do

New IRIS-HEP team members need to do some number of things to get connected.
This webpage documents the things that need to be done. If you find there are steps
not mentioned here, or missing/unclear information, please [contribute an improvement][]!

#### IRIS-HEP website

* Request membership in the [IRIS-HEP GitHub organization][] from one of the owners - Brian Bockelman, David Lange, Gordon Watts, Heather Gray, or Peter Elmer.
* Fork [https://github.com/iris-hep/iris-hep.github.io](https://github.com/iris-hep/iris-hep.github.io) and make a pull request with two changes
  * Add a photo named `First-Last.jpg` or `.png` to the [assets/images/team folder][]. It should be 320x240 pixels.
  * Add a "`<your github username>.yml`" file to the [people folder in the website repository][people]. Here is an example:

```yml
active: true
focus-area:
- <primary focus area(s), a list>
institution: <Your University>
name: <Your name>
photo: /assets/images/team/<First name>-<Last name>.jpg
shortname: <Your GitHub user ID>
title: <Can be blank - will show a title under your picture>
website: <Optional, your website>
presentations:
  - title: How to make green eggs and ham
    date: 2018-09-10
    url: https://indico.cern.ch/event/697389/contributions/3062046/attachments/1712602/2761531/ROOT2018-Union.pdf
    meeting: ROOT 2018 Users Workshop
    meetingurl: https://cern.ch/root2018
    project: greeneggs
    focus-area: as
    location: Virtual
```

* Add your GitHub username to the proper [university file][]. Note that you will *not* show up in the full team page if you are not in a university file!

#### Communication

* Have an existing team member add your email address to the [IRIS-HEP Slack][] team.
* Subscribe to the relevant [Google mailing lists][], at the very least "IRIS-HEP Full Team" and "IRIS-HEP Announcements".

#### Presentations

If you don't have any presentations yet, you can leave presentations blank. For more on adding new presentations, see [the add a presentation page][presentation].

[contribute an improvement]:    https://github.com/iris-hep/iris-hep.github.io/pulls
[IRIS-HEP GitHub organization]: https://github.com/iris-hep
[assets/images/team folder]:    https://github.com/iris-hep/iris-hep.github.io/tree/master/assets/images/team
[people]:                       https://github.com/iris-hep/iris-hep.github.io/tree/master/_data/people
[university file]:              https://github.com/iris-hep/iris-hep.github.io/tree/master/_data/universities
[IRIS-HEP Slack]:               https://iris-hep.slack.com
[Google mailing lists]:         https://groups.google.com/a/iris-hep.org
[presentation]:                 https://iris-hep.org/docs/addpresentation.html
