---
permalink: /docs/codas-hep.html
layout: default
title: Information to add or update codas-hep participant pages
pagetype: doc
---

### Adding or updating a CoDaS-HEP participant page on the IRIS-HEP Website

In order to add your information, we request you to please supply a photo ( First_Name-Last_Name.jpg or .png - 320x240 pixels) and a paragraph summarizing your project’s goals.

Summary: you should submit a pull request with the photo and a markdown file as described below to this repo:

<https://github.com/iris-hep/iris-hep.github.io>


* Add a photo named `First-Last.jpg` or `.png` to the [assets/images/codas-hep/2023/ folder](https://github.com/iris-hep/iris-hep.github.io/tree/master/assets/images/codas-hep/2023/). It should be 320x240 pixels and in general should be 150kB or less.
* Add a "`<your github username>.md`" file to the [CoDaS-HEP 2023 participants folder in the website repository](https://github.com/iris-hep/iris-hep.github.io/tree/master/_codas-hep-students/2023/). There is a "example-template.md.txt" in that directory that you copy to to <your github username>.md and edit. See the example below. There are some portions which you can edit to tell us more about yourself. See [examples from CoDaS-HEP 2022](https://codas-hep.org/downloads/CoDaS-HEP-2022-introduction-slides.pdf).

You can optionally include your linkedin-profile and your orcid if you have one. 
```yml
---
layout: codas-hep-participant
e-mail: YOUR-EMAIL
institution: YOUR-UNIVERSITY
name: YOUR-NAME
photo: "/assets/images/team/Robert-Tuck.jpg"
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
### My research: TO-EDIT

### My expertise is: TO-EDIT

### A problem I'm grappling with: TO-EDIT

### I've got my eyes on: TO-EDIT

### I want to know more about: TO-EDIT
```

