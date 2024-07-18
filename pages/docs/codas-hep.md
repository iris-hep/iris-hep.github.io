---
permalink: /docs/codas-hep.html
layout: default
title: Information to add or update CoDaS-HEP participant pages
pagetype: doc
---

### Adding or updating a CoDaS-HEP participant page on the IRIS-HEP Website

In order to add your information, we request you to please supply a photo ( First_Name-Last_Name.jpg or .png - 320x240 pixels) and some information about
yourself in the form a markdown file.

Summary: you should submit a pull request with the photo and a markdown file as described below to this repo:

<https://github.com/iris-hep/iris-hep.github.io>

* Add a photo named `First-Last.jpg` or `.png` to the [assets/images/codas-hep/2024/](https://github.com/iris-hep/iris-hep.github.io/tree/master/assets/images/codas-hep/2024/) folder. It should be 320x240 pixels and in general should be 150kB or less.
* Add a "`<your github username>.md`" file to the [CoDaS-HEP 2024 participants folder in the website repository](https://github.com/iris-hep/iris-hep.github.io/tree/master/_codas-hep-students/2024/). There is a "example-template.md" in that directory that you copy to to "`<your github username>.md`" and edit. See the example below. There are some portions which you can edit to tell us more about yourself. See [examples from CoDaS-HEP 2023](https://iris-hep.org/codas-hep-2023.html).

You can optionally include your linkedin-profile and your orcid if you have one.

```yml
---
layout: codas-hep-participant
e-mail: YOUR-EMAIL
institution: YOUR-UNIVERSITY
name: YOUR-NAME
photo: "/assets/images/codas-hep/2024/Your-Name.jpg"
github-username: YOUR-GITHUB-USERNAME
linkedin-profile: URL-TO-LINKEDIN-PROFILE-IF-AVAILABLE
orcid:
title:
website:
logos:
    - /assets/images/codas-hep/logos/CMS.jpg
    - /assets/images/codas-hep/logos/Iris-hep-logo.png
---
```

```
## My research:
TO-EDIT

## My expertise is:
TO-EDIT

## A problem I'm grappling with:
TO-EDIT

## I've got my eyes on:
TO-EDIT

## I want to know more about:
TO-EDIT
```

As part of this you can also specify logos for projects or experiments
you are involved with. (Change the CMS and IRIS-HEP examples above to
those that make sense for you!) An initial set of possible logos
can be found in [the CoDaS-HEP logo area](https://github.com/iris-hep/iris-hep.github.io/tree/master/assets/images/codas-hep/logos). Please link to those if appropriate ones already exist for your affiliations. If you need to add a new one, please keep the filesize under 150kb.
