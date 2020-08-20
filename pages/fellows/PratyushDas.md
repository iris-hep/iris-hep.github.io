---
permalink: /fellows/ReikDas.html
layout: fellow
pagetype: fellow
active: green
title: Reik Das - IRIS-HEP Fellow
fellow-name: Pratyush (Reik) Das
shortname: reikdas
dates:
- start_date: 2020-06-01
  end_date: 2020-09-01
- start_date: 2019-06-01
  end_date: 2019-09-01
photo: /assets/images/team/Pratyush-Das.jpg
institution: Institute of Engineering & Management (Kolkata)
website: https://reikdas.github.io/
e-mail: reikdas@gmail.com

projects:
- project_title: Awkward-Array GPU Kernels
  project_goal: >
    As an IRIS-HEP undergraduate fellow, my work would involve creating a library of Awkward-Array
    GPU kernels preceded by an investigation into the most appropriate way to translate pre-existing
    CPU kernels to GPU kernels, with an emphasis on generalizing the translation between the scalar
    code in the currently existing CPU kernels into vectorized code to be executed on GPUs. At the
    end of the summer, users of Awkward Array should be able to naively switch between the CPU and
    GPU backends without having to write specialized code or even leaving the Python prompt.
  mentors:
  - jpivarski
  proposal: /assets/pdf/Fellow-Pratyush-Das-Proposal2.pdf

- project_title: Adding ability to write TTrees to uproot
  project_goal: >
    As an IRIS-HEP undergraduate fellow, I will be working on uproot, a
    software for reading and writing ROOT files in Python with the help of
    the Numpy library. Unlike the standard C++ ROOT implementation, uproot
    is strictly an I/O library, intended to stream data into other third
    party libraries in Python. Other ROOT file readers in Python like PyROOT
    and root_numpy rely on the C++ ROOT implementation but uproot does not.
    Instead, it uses Numpy calls to rapidly cast data blocks in the ROOT file as Numpy arrays.
  mentors:
  - jpivarski
  proposal: /assets/pdf/Fellow-Pratyush-Das-Proposal.pdf

presentations:
---  
