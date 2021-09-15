---
layout: irispost
title: "IRIS-HEP Profile: Henry Schreiner"
author:  Eoin O'Carroll
image: /assets/images/posts/2021-09-15-Henry-Schreiner-rse-posters.jpg
image-caption: >
  Caption: Henry Schreiner attends the IRIS-HEP Poster Session in February
  2020. Schreiner is one of three IRIS-HEP team members working on
  developing histogramming technology for Python, a widely used
  programming language. Photo Credit: Jim Pivarski, Princeton University
postbanner: /assets/images/posts/2021-09-15-Henry-Schreiner-rse-posters.jpg
summary: >
    Highlights the work of Henry Schreiner, a computational physicist and research software engineer with IRIS-HEP
---

In April 2020, as hospitals faced a dire shortage of ventilators, Henry
Schreiner had to shift his attention from tracking subatomic particles
for high-energy physics to monitoring oxygen levels for COVID-19
patients.

Schreiner, a computational physicist and research software engineer with
IRIS-HEP at Princeton University, had joined the [*Princeton Open
Ventilation Monitor
project*](https://www.princeton.edu/news/2021/01/29/beyond-ventilators-princeton-engineers-design-build-and-program-noninvasive),
an all-out effort by Princeton scientists and engineers to supply
hospitals in Pennsylvania and New Jersey with specialized airflow
monitors for patients undergoing non-invasive ventilation, a type of
respiratory support that stops short of full intubation.

"It was a very intense month," says Schreiner, who led the software
effort and created the flow meters' user interface, which lets
clinicians monitor 20 patients at once. "I was sort of working double
time."

He would have had to work even longer if he had started from scratch.
Instead, Schreiner built on techniques he learned as a grad student at
the University of Texas, Austin, where he
[*built*](http://hdl.handle.net/2152/39757) a data acquisition system
that uses cosmic-ray muons to map the interior of a sealed Mayan pyramid
in Belize.

{% include figure.html
    file="/assets/images/posts/2021-09-15-Henry-Schreiner-rse-Belize.png"
    alt="Schreiner's work with muon tomography and Mayan archaeology"
    caption="Using cosmic-ray muons to map a Mayan pyramid interior. Photo Credit: Henry Schreiner."
%}

"It was really very similar", he says. "Both had to work with minimal
user interaction and without developer intervention once it was
deployed."

Schreiner knows intuitively that no code is an island. Software, at
least when it's well written, can be reused, extended, and integrated
with other software into a broader ecosystem. Being mindful of that
ecosystem means not having to reinvent the wheel.

"It can be very easy to think that you're the only one who's faced your
problem," he says. "But it's so often that it's not true at all."

This holistic approach has resulted in Schreiner's code appearing in a
variety of far-flung applications. His supporting work on
[*pybind11*](https://pybind11.readthedocs.io/en/stable/), which helps
the popular programming languages Python and C++ work together, is used
by Facebook, Google, and in thousands of Python packages. He wrote
CLI11, which translates commands sent to C++ applications, under an
award from the National Science Foundation. Originally developed to
simplify the interface for high-energy physicists using graphics
processing units and other systems that can perform multiple
calculations at once, today it is now used in many places, including the
Microsoft Terminal.

"When I write something, I try to avoid specializing it to the last
possible second," he says. "I like it when we can use the same tools."

Schreiner, who joined IRIS-HEP in 2019, notes that the work of
supporting a software ecosystem typically goes unrecognized in academia,
which typically rewards those who publish new – increasingly
hyper-specialized – research papers. Thankfully, he says, "I don't have
to worry about that with my position with IRIS-HEP."

Plus, the job comes with its own rewards. "The best way to be on the
cutting edge," says Schreiner, "is to build on something that someone
else has built on."

{% include figure.html
    file="/assets/images/posts/2021-09-15-Henry-Schreiner-rse-vent-monitor.png"
    alt="Schreiner's work with Princeton Open Ventilation Monitor"
    caption=Testing the Princeton Open Ventilation Monitor with a helmet respiration device. The single-device display can be seen on the monitor on the left. Several devices can be seen on the bottom left, one connected to the breathing apparatus and two disconnected devices showing red screens in the alarm state.
Photo Credit: Chris Tully, Princeton University"
%}
