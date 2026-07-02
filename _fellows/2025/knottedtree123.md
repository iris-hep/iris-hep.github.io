---
layout: fellow
pagetype: fellow
shortname: knottedtree123
permalink: /fellows/knottedtree123.html
fellow-name: Cody Tanner
title: Cody Tanner - IRIS-HEP Fellow
active: True
dates:
  start: 2025-07-01
  end: 2025-09-26
  start: 2026-06-15
  end: 2026-09-07
photo: /assets/images/team/fellows-2025/Cody-Tanner.jpg
institution: University of Washington
e-mail: cjt05@uw.edu
focus-area: ia
challenge-area:
projects:
  - project_title: Differentiable Modeling of Systematic Uncertainties in ATLAS Object Corrections (2025)
    project_goal: >
      Modern ATLAS analyses depend on object corrections that are currently implemented through non-differentiable procedures like histogram lookups and conditional logic, limiting their integration into gradient-based pipelines. This project proposes a neural network model that replicates ATLAS object corrections, including systematic uncertainties, for small-R jets in a differentiable and computationally efficient form. Starting from an existing baseline trained on the JZ2 dataset, the model will be refined through architectural tuning, loss reweighting, and incorporation of per-object uncertainties to approach sub-percent residuals in jet kinematics. A final case study will use the model to reconstruct Z→jj peaks, evaluating the physics impact of improved corrections and uncertainty modeling. This work provides a foundation for embedding fast, uncertainty-aware corrections directly into end-to-end ATLAS workflows.
    mentors:
      - Gordon Watts (University of Washington)
    proposal: /assets/pdf/fellows-2025/USA035-proposal-Cody-Tanner.pdf
  - project_title: Differentiable Modeling of Systematic Uncertainties in ATLAS Object Corrections (2026)
    project_goal: >
      "Modern ATLAS analyses of rare processes such as Z → qq̄ depend on both precise calibration of reconstructed objects and machine-learning classifiers, but the two are typically decoupled by non-differentiable selection steps that break gradient flow. This project proposes a fully differentiable analysis pipeline connecting a systematically calibrated jet-correction network to a downstream signal-background classifier. The central technical contribution is replacing the discrete arg max jet-pair selection with a smooth alternative, such as soft attention or a Gumbel-softmax relaxation, restoring end-to-end differentiability across the full chain. With gradient flow restored, the classification stage will be trained on frozen, physics-validated calibrated inputs, and the resulting pipeline will be evaluated under variations of the leading systematic uncertainties to quantify the robustness gained relative to an uncalibrated baseline. A final study will report performance in terms of signal significance and a cross-section measurement, with results documented in a public code release and a draft publication. This work demonstrates a path toward embedding calibration-aware, systematics-robust machine learning directly into end-to-end ATLAS analysis workflows."
    mentors:
      - Gordon Watts (University of Washington)
    proposal: /assets/pdf/fellows-2026/USA003-proposal-Cody-Tanner.pdf
presentations:
current_status:
github-username: knottedtree123
linkedin-profile: https://www.linkedin.com/in/cody-tanner-12940421b
---
