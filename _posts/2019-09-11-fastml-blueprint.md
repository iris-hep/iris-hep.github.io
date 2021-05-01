---
layout: irispost
title: Workshop on Accelerated Machine Learning and Inference (FastML)
author: Melissa Moss and Peter Elmer
postimage: /assets/images/20190911-fastml-georgia-karagiorgi.jpg
postimage-caption: "Georgia Karagiorgi (Columbia University) describes the opportunities for fast machine learning for the neutrino physics program. Photo Credit: Marguerite Tonjes (FNAL)."
postbanner: /assets/images/20190911-fastml-workshop-19-0152-01.jpg
summary: "From September 10-11 at Fermi National Accelerator Laboratory (Fermilab), over 200 scientists gathered for a workshop to explore ultrafast deep learning algorithms and inference technologies, as well as the strategies driving cutting-edge ML for high energy physics."
---


From September 10-11 at Fermi National Accelerator Laboratory (Fermilab), over 200 scientists gathered for a workshop to explore ultrafast deep learning algorithms and inference technologies, as well as the strategies driving cutting-edge fast machine learning (FastML) for high energy physics.
<!--more-->

As explained by workshop co-organizer Mark Neubauer, a Professor of Physics at the University of Illinois at Urbana-Champaign, "In high-energy physics research at colliders like the Large Hadron Collider (LHC), experiments need to separate, often in real-time, very rare signals of interest from a large rate of more mundane proton-proton interactions observed in the detectors. Machine learning is rapidly becoming a powerful tool to achieve this challenging goal. This workshop brought together experts from domain science (High Energy Physics and beyond), computer science and industry to discuss the latest advances in accelerated machine learning and inference. The strong turn-out for the workshop and lively discussions by the participants showcased the vitality of this research thrust and its potential to significantly advance the discovery potential in fundamental physics."

{% include figure.html
    file="/assets/images/posts/20190911-Mark-Neubauer-DSC00818.jpg"
    alt="Mark Neubauer (University of Illinois at Urbana-Champaign)"
    caption="Mark Neubauer (University of Illinois at Urbana-Champaign) helped organize the FastML workshop as a `blueprint' workshop, which aims to inform the planning for the IRIS-HEP software institute. IRIS-HEP is working to find solutions for the computational and data science challenges of the HL-LHC. Photo Credit: Marguerite Tonjes (FNAL)."
%}

The FastML workshop brings together researchers interested not only in machine learning, but how it can be used on super-fast, accelerated technologies like FPGAs and GPUs. The workshop is exploring the landscape of possibilities that the combination of ML and such computer technologies will deliver in the coming years.

Isobel Ojalvo, Assistant Professor in Physics at Princeton University, attended the workshop because "FastML will be an important tool to help us collect high quality data and search for extraordinarily rare particles and phenomena that would allow us to understand the underlying forces in the universe."
In particular, Ojalvo is interested in writing algorithms that will be able to classify particle collisions at the LHC in less than a few microseconds for the Compact Muon Solenoid (CMS) detector. "FastML provides a mechanism to use our favorite Machine Learning techniques like Neural Networks and Boosted Decision Trees with a very short latency; similarly to ML inference on CPUs, we are able to take in a large amount of data from an LHC collision and decide whether or not this data is worth saving and analyzing further," she explained. "By  running this inference on FPGAs  or other accelerated systems we can make these inferences in tens of nanoseconds instead of in milliseconds. The detectors at the LHC see 100s of billions of particles every second and this will only increase in the next 10 years as the LHC itself undergoes upgrades."

 "ML is rapidly becoming the major tool to analyze complex data sets over many different disciplines. We saw the need to come together as HEP community and learn more about ultrafast on-detector inference and real-time systems, acceleration as-a-service, hardware platforms, coprocessor technologies (CPU/GPU/TPU/FPGAs), distributed learning, and hyper-parameter optimization."

Philip Harris, an Assistant Professor of Physics at the Massachusetts Institute of Technology and also a workshop co-organizer, elaborated: "For this workshop, we wanted to bring together a number of experts on machine learning and processor technology to make it clear that there is a serious demand for high-speed machine learning and that there are potential solutions that already exist. The goal of this workshop was to make it clear that we can enable further development in both fields by integrating the physics community with the high-speed machine learning community.

"In a few years the demands to process data at the Large Hadron Collider will exceed the scaling limitations of Moore's law (really Dennard Scaling). In my opinion, the fastest and most effective way to overcome this limit is to come up with approaches to parallelize algorithms so that we run these algorithms with modern processing technology. The most natural and effective way is through the adoption of Machine Learning. So I see this approach as a critical element to enabling high-quality research at the LHC. Many other HEP experiments, such as DUNE, will benefit from the same paradigm switch."

Philip continued: "My own physics research on understanding the Higgs boson and dark matter relies on data that we will likely not be able to store in the future running of the LHC if we do not alter our research paradigm towards parallelized computation.  However, if we do perform this switch and we get significant gains in our ability to process data, I see a potential enhancement of the physics quality output of my own projects.


The material from the workshop is available online in an [Indico agenda](https://indico.cern.ch/event/822126/timetable/).

<br/>


{% include figure.html
    file="/assets/images/posts/20190911-Isobel-Ojalvo-DSC00844.jpg"
    alt="Isobel Ojalvo (Princeton University)"
    caption="Isobel Ojalvo (Princeton University) discusses trigger systems for high energy physics. Photo Credit: Marguerite Tonjes (FNAL)."
    class="center"
%}

{% include figure.html
    file="/assets/images/posts/20190911-Phil-Harris-DSC01033.jpg"
    alt="Phil Harris (Massachusetts Institute of Technology)"
    caption="Phil Harris (Massachusetts Institute of Technology). Photo Credit: Marguerite Tonjes (FNAL)."
    class="center"
%}

