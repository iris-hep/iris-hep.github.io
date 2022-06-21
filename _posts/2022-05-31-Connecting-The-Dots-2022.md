---
layout: irispost
title: "Pattern-Recognition Experts Connect the Dots at Princeton"
author:  Eoin O'Carroll
image: /assets/images/posts/2022-05-31-Connecting-The-Dots-2022-group.png
image-caption: >
    CTD 2022 Workshop group photo (in-person and over Zoom). Credit: Rick Soden, Princeton University
summary: >
  The Connecting the Dots workshop brings track reconstruction experts together with other machine-learning specialists.
---

Experts in track reconstruction gathered at Princeton University from May 31 to June 2 for the seventh Connecting the Dots workshop.

Supported and hosted by the Institute for Research and Innovation in Software for High Energy Physics (IRIS-HEP), the Princeton Physics Department, and the Princeton Institute for Computational Science and Engineering (PICSciE), the workshop brought together researchers in particle track reconstruction and related disciplines with the goal of developing common solutions to problems in pattern recognition in sparsely sampled data. The workshop focused mostly on high-energy physics applications, but it included practitioners from a variety of scientific disciplines.

The workshop was held in a hybrid format that combines remote participation with an in-person gathering at Princeton’s Jadwin Hall, home to the Department of Physics.

Track reconstruction experts use data from particle detectors, like those used in the Large Hadron Collider (LHC), to determine the trajectories of particles. Despite needing colossal amounts of computing resources, they tend to draw little attention to themselves, says Princeton computational physicist David Lange, a member of IRIS-HEP's executive board who helped organize the workshop. The job's inconspicuousness, he says, comes from the work's reliability.

"There are a lot of mature algorithms," he says. "We already have a fully working battle-tested system but we need to prepare for the future."

But the discipline still comes with plenty of opportunities to innovate, says Savannah Thais, an associate research scholar at Princeton who is also supported by IRIS-HEP. "It's a problem that can be considered from so many different angles," says Thais, who in recent years has taken a deep-learning approach that analyzes particle tracks as geometric objects.

{% include figure.html
    file="/assets/images/posts/2022-05-31-Connecting-The-Dots-2022-David-Lange.jpg"
    alt="Photo of David Lange presenting at the CTD 2022 workshop"
    caption="David Lange, computational physicist at Princeton and lead organizer, presenting at the CTD 2022 workshop. Credit: Floe Fusin-Wischusen, Princeton University."
%}

## Connecting The Dots

Track reconstruction is an essential component to nearly every experiment conducted at particle colliders including the LHC, which is located at Europe's CERN laboratory on the French-Swiss border. A 17-mile ring of nearly airless pipes, superconducting magnets, and sophisticated detectors, the LHC is designed around the principle that the best way to reveal the secrets of the universe is to take tiny bits of it, smash them together, and look at what flies off.

This process may sound straightforward, but the journey from raw data to physics results relies on the expertise of thousands of scientists around the globe working in specialized roles.

Track reconstruction occurs early on in the process, before any data is analyzed or hypotheses tested. At the LHC's Compact Muon Solenoid (CMS) experiment, where Lange helps develop collaborative software and computing tools, it begins with data collected by a silicon pixel detector, a shoebox-sized, 65-megapixel detector that sits closest to the point of collision.

Surrounding the collision point and the pixel detector are concentric rings of silicon pixel strips. When protons beams collide in the CMS, some of the fragments flying away from the collision – charged subatomic particles like electrons, muons, kaons, and pions –  leave traces of energy on the silicon detectors.

Using algorithmic techniques like Kalman filtering, a well-established method for estimating the state of a system that contains lots of random variation, scientists can calculate each particle's trajectory, an essential step in identifying the particle.

"It's a niche of a niche," says Paolo Calafiura of Lawrence Berkeley National Laboratory.  Deputy Principal Investigator of the HEP-CCE project at DOE. "It has always had a reputation of being one of the most sophisticated areas of computational physics."



{% include figure.html
    file="/assets/images/posts/2022-05-31-Connecting-The-Dots-2022-Liv-Vage-Donal-Joseph.png"
    alt="Liv Vage of Imperial College and Donal Joseph Mclaughlin from University College London during the poster session at the CTD 2022 workshop."
    caption="Liv Vage of Imperial College and Donal Joseph Mclaughlin from University College London during the poster session at the CTD 2022 workshop. Credit: Floe Fusin-Wischusen, Princeton University."
%}

Lange describes the process as  "very much about grouping together sets of hits – or dots – and connecting them to figure out the particle that created them."

So when practitioners convened for their first annual workshop in Berkeley, in 2015 it was only natural for them to call it "Connecting the Dots."

"I'm so glad that in-person events are happening again," says Thais. "It's so great to be able to put that human element into your work."

Connecting the Dots also aims to establish connections between high-energy physics and the many other disciplines that are being radically transformed by advances in computing.

"A colleague of mine joked that instead of doing machine learning for physics, we're doing physics for machine learning," Calafiura says. "I think that's pushing it, but it seems that everything in physics these days is machine learning."

The Exa.TrkX project, of which Calafiura and Thais are part, introduced graph neural networks, or GNNs, to track reconstruction. A type of machine-learning model that draws inferences from data represented graphically, GNNs are widely used by social media companies to detect patterns and generate recommendations. In recent years, GNNs have proven useful in deciphering particle-collision data, which is often jumbled by multiple particles contributing to the same measurements and vice versa.

Thais and Calafiura, worked with Giuseppe Cerati, a distinguished researcher at Fermilab's LHC Physics Center,  to organize a workshop on May 31 on GNNs and track reconstruction. She says she appreciated the opportunity to collaborate with machine-learning specialists with different perspectives. "It just makes sense to bring in people who … can help us make sure we're staying up to date on what is happening in the field," she says, noting that the challenges in track reconstruction will only increase once the LHC boosts the rate of particle collisions in 2027.

"I thought it went really well," says Thais of the GNN workshop. "We had a lot of participation and discussion and came up with some concrete project ideas."

Since 2015, the Connecting the Dots workshop has been held in Berkeley (2015), Vienna (2016), LAL-Orsay (2017), Seattle (2018), and Valencia (2019). The conference was held virtually in 2020.
