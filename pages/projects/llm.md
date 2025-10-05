---
permalink: /projects/llm.html
layout: project
title: Large Language Models As Assistants
shortname: llm
pagetype: project
image: logos/particle-llm.png
logowidth: 30%
blurb: Umbrella project gathering institute efforts using LLMs as asisstants.
maturity: Development
maturity-note:
focus-area: as
start-date: 2025-01-01
team:
 - gordonwatts
 - davidlange6
 - pelmer
 - rrutaa
---

This is an umbrella project to collect the experimental acitivites going on in the institute around using large language models to help particle
physicsts work. This includes coding, attending conferences, reading and comprehending papers, et.c

* [`hep-data-llm`](https://github.com/gordonwatts/hep-data-llm) a plot agent that experiments with taking the [`adl-benchmark-index`](https://github.com/iris-hep/adl-benchmarks-index)
  questions and hint files so that a LLM will generate and run the code. Complete with
  fairly complete evaluation metrics and ~20 open source and commerical models tested. Preceeded by the [`atlas-plot-agent`](https://github.com/gordonwatts/atlas-plot-agent) project.
* [cmspiolot](https://github.com/rrutaa/cmspilot) a plot agent that uses RAG techniques to target very small LLM's. Fellow Project
* [azure-light-rag](https://github.com/gordonwatts/azure-light-rag) RAG designed to work with very large corpuses of text (e.g. all the European Union stratigic update, or Snowmass documents). Uses RAG techniques plus entity extraction.
  Shows all the various problems that traditional RAG shows when working with very large amounts of data. Designed to run in the cloud, and be invoked as a tool from OpenAI's chat-gpt tool.
* [abstract-rankder](https://github.com/gordonwatts/abstract-ranker) - given a list of the users preferences will rank abstracts submitted to a conference and generate a spreadsheet
  can be used to navigate a large confernece like ICHEP or CHEP.
