---
permalink: /docs/fellows_multiple_projects.html
layout: default
title: Fellows Pages with multiple projects
pagetype: doc
---

### Adding multiple projects to your Fellows Page

If you are a returning IRIS-HEP Fellow, the format for adding multiple projects is slightly different.

*Please Note*:  In the markdown file you create, ensure you set the “active” attribute to True – (i.e.  active: True).  Otherwise, your entry will not appear on our Fellows page.

You should submit a pull request with the updated markdown file to this repo:

<https://github.com/iris-hep/iris-hep.github.io>

### Dates
Date format for start and end dates should be -- YYYY-MM-DD -- i.e. 2021-12-31

In the dates field, you will add a list of dates as shown below.  The first set of dates will be the start and end dates of your previous fellowship, the second set will be the start and end dates of your current fellowship.

```yml
___
dates:
  - start: YYYY-MM-DD
    end: YYYY-MM-DD
  - start: YYYY-MM-DD
    end: YYYY-MM-DD
---
```

### Projects
You will also have to make changes to the projects section to display multiple projects

First project (Project #1 in the example) will be the information from your previous fellowship.  The second project will be the information for your current project (Projec #2 in the example).

```yml


---
projects:
- project_title: Project #1
  project_goal: >
    Description of Project #1
  mentors:
  -  Project #1 Mentor
  proposal: <path to Project #1 proposal>
- project_title: Project #2
  project_goal: >
    Description of Project #2
  mentors:
  -  Project #2 Mentor
  proposal: <path to Project #2 proposal>
---
```


