---
permalink: /projects/llm.html
layout: project
title: Large Language Models As Assistants
shortname: llm
pagetype: project
image: logos/particle-llm.png
logowidth: 30%
blurb: Umbrella project gathering institute efforts using LLMs as assistants.
maturity: Exploratory
maturity-note:
focus-area: as
start-date: 2025-01-01
team:
 - gordonwatts
 - davidlange6
 - pelmer
 - rrutaa
---

This is an umbrella project to collect the experimental activities going on in the institute around using large language models to help particle
physicists work. This includes coding, attending conferences, reading and comprehending papers, etc.

* [`hep-data-llm`](https://github.com/gordonwatts/hep-data-llm) a plot agent that experiments with taking the [`adl-benchmark-index`](https://github.com/iris-hep/adl-benchmarks-index)
  questions and hint files so that an LLM will generate and run the code. Complete with
  fairly complete evaluation metrics and ~20 open source and commercial models tested. Preceded by the [`atlas-plot-agent`](https://github.com/gordonwatts/atlas-plot-agent) project.
* [`test-wsl2-llm`](https://github.com/gordonwatts/test-wsl2-llm) a Windows-to-WSL2 harness for running LLMs in CLIs such as Codex (currently the only supported CLI), including templated batches, concurrent repetitions, continuations, and generated reports.
* [cmspilot](https://github.com/rrutaa/cmspilot) a plot agent that uses RAG techniques to target very small LLMs. Fellow Project
* [azure-light-rag](https://github.com/gordonwatts/azure-light-rag) RAG designed to work with very large corpora of text (e.g. all the European Union strategic update, or Snowmass documents). Uses RAG techniques plus entity extraction.
  Shows all the various problems that traditional RAG shows when working with very large amounts of data. Designed to run in the cloud, and be invoked as a tool from OpenAI's ChatGPT tool.
* [abstract-ranker](https://github.com/gordonwatts/abstract-ranker) - given a list of the user's preferences, will rank abstracts submitted to a conference and generate a spreadsheet
  can be used to navigate a large conference like ICHEP or CHEP.
* [root-mcp](https://gitlab.cern.ch/itgpt/root-mcp-server) connects LLM agents to ROOT files through MCP tools and a command-line interface. It handles file inspection, event selections, histograms, statistics, invariant-mass calculations, and plotting.
* [hepdata-mcp](https://github.com/HEPData/hepdata-mcp) gives LLM agents read-only access to public HEPData records and tables. It's an early build supporting measurement discovery, retrieving numerical data, and getting export links.
* [inspirehep-mcp](https://github.com/MohamedElashri/inspirehep-mcp) connects LLM agents to INSPIRE-HEP for literature searches, citation exploration, author information, and formatted references.
* [cerngitlab-mcp](https://gitlab.cern.ch/itgpt/cerngitlab-mcp) connects LLM agents to CERN GitLab to discover and inspect HEP code, documentation, and analysis examples. It offers MCP and CLI interfaces, with public repository access and authenticated access subject to GitLab permissions.
* [LHCbFinder](https://lhcbfinder.net/) runs semantic search over LHCb papers using embeddings and vector retrieval.
