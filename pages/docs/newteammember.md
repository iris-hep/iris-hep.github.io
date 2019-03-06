---
permalink: /docs/newteammember.html
layout: default
title: Information for new IRIS-HEP team members
---

### Things new IRIS-HEP team members need to do

New IRIS-HEP team members need to do some number of things to get connected.
This webpage documents the things that need to be done. If you find there are steps
not mentioned here, or missing/unclear information, please [contribute an improvement][]!

#### IRIS-HEP website

* Request membership in the [IRIS-HEP GitHub organization][].
* Add a photo named `First-Last.jpg` or `.png` to the [assets/team folder][]. It should be 320x240 pixels.
* Add a "<your github username>.md" file to the [people folder in the website repository][people]. Here is an example:

```yml
name: <Your name>
shortname: <Your GitHub user ID>
title: <Can be blank - will show a title under your picture>
active: green
institution: <Your University>
website: <Optional, your website>
photo: /assets/images/team/<First name>-<Last name>.jpg
presentations:
  - title: How to make green eggs and ham
    date: 13 Sep 2018
    url: http://cern.ch/
    meeting: ROOT 2018 Users Workshop
    meetingurl: http://cnn.com
    location: Sarajevo
```

* Add your GitHub username to the proper [university file][].

#### Communication

* Have an existing team member add your email address to the [IRIS-HEP Slack][] team.
* Subscribe to the relevant [Google mailing lists][], at the very least "IRIS-HEP Full Team" and "IRIS-HEP Announcements".

#### Meetings

* The schedule for the meetings is a google doc, request that link from a team member.

[contribute an improvement]:    https://github.com/iris-hep/iris-hep.github.io/pulls
[IRIS-HEP GitHub organization]: https://github.com/iris-hep
[assets/team folder]:           https://github.com/iris-hep/iris-hep.github.io/tree/master/assets/images/team
[people]:                       https://github.com/iris-hep/iris-hep.github.io/tree/master/_data/people
[university file]:              https://github.com/iris-hep/iris-hep.github.io/tree/master/_data/universities
[IRIS-HEP Slack]:               https://iris-hep.slack.com
[Google mailing lists]:         https://groups.google.com/a/iris-hep.org
