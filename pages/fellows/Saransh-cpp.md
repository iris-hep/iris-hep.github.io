---
layout: fellow
pagetype: fellow
shortname: Saransh-cpp
permalink: /fellows/Saransh-cpp.html
fellow-name: Saransh Chopra
title: Saransh Chopra - IRIS-HEP Fellow
active: True
dates:
  start: 2022-06-01
  end: 2022-08-31
photo: /assets/images/team/Saransh-Chopra.png
institution: Cluster Innovation Centre, University of Delhi
e-mail: saransh0701@gmail.com
project_title: Vector - Constructors, documentation, and benchmarks
project_goal: >
    Vector is a Python library for 2D, 3D, and Lorentz vectors, including
    arrays of vectors, designed to solve common physics problems in a NumPy-like
    way. Vector currently supports pure Python Object, NumPy, Awkward, and Numba-based
    (Numba-Object, Numba-Awkward) backends. </br> </br>
    The user-facing API of Vector is a bit confusing as it does not expose
    its true API, which are the Python classes. The current API provides
    wrapper functions (named as obj, arr, and awk) to users which are also
    shown in the internal classes' __repr__ methods, making these constructor
    functions even more ambiguous. </br> </br>
    Additionally, the vector library lacks proper user as well as API
    documentation. Currently, there are no detailed explanations in the existing
    tutorials, and most of the functions and classes do not contain docstrings,
    which automatically render when displayed on the documentation website.
    Furthermore, benchmarking would be a valuable addition to the Vector project,
    which could then be propagated to all Scikit-HEP packages in the future. </br> </br>
    This project would aim to prepare Vector for its first major release
    by exposing its internal API to the users, improving the documentation,
    and adding benchmarks.
focus-area: as
mentors:
  - Henry Schreiner (Princeton University)
  - Jim Pivarski (Princeton University)
proposal: /assets/pdf/fellows-2022/040-proposal-Saransh-Chopra.pdf
presentations:
- title: Constructing HEP vectors and analyzing HEP data using Vector
  date: 2022-09-13
  url: https://indi.to/bPmMc
  meeting: PyHEP 2022 (virtual) Workshop
  meetingurl: https://indico.cern.ch/event/1150631/
  location: online
  recordingurl: https://www.youtube.com/watch?v=4iveMzrbe7s&list=PLKZ9c4ONm-VkohKG-skzEG_gklMaSgaO7&index=14
  focus-area: as
  project: vector
- title: Vector - Constructors, documentation, and benchmarks
  date: 2022-06-15
  url: https://indico.cern.ch/event/1155138/contributions/4850299/subcontributions/385059/attachments/2463404/4223807/Saransh-Chopra.pdf
  meeting: IRIS-HEP Fellows Lightning Talks
  meetingurl: https://indico.cern.ch/event/1155138/
  recordingurl: https://www.youtube.com/watch?v=fLt7BHuASpw
  focus-area: as
  project: vector
github-username: Saransh-cpp
---
