---
name: iris-hep-website-update-project
description: Update an IRIS-HEP project page with verified repository or external project information while preserving the site’s existing structure and conventions.
---

# Update an IRIS-HEP project

Use this skill for focused project-page maintenance in <https://github.com/iris-hep/iris-hep.github.io>. Treat the checked-out repository as authoritative: inspect its current documentation, nearby project pages, schemas, and PR templates before editing.

## Repository workflow

- Start from the latest upstream default branch. The repository currently uses `master`, not `main`; rediscover the default branch each time in case it changes.
- Inspect before editing. Confirm the target page, front matter, local structure, formatting, and validation commands from the current checkout.
- Make only the requested change; do not reformat or rewrite unrelated content.
- Never fabricate project names, descriptions, repository links, tags, or other metadata. Explain unresolved ambiguity instead of guessing.
- Use repository conventions, including pre-commit formatting, and review every automated change.
- Finish with a focused commit, a pushed topic branch, and a ready-for-review pull request.

Read the current equivalents of `README.md`, `.github/CONTRIBUTING.md`, `pages/docs/webdev.md`, the task definitions (`pixi.toml`/`Rakefile`), relevant schemas under `_scripts`, comparable project pages, and any applicable PR template. Do not hard-code commands that the checkout no longer recommends.

## Locate the project page

Projects currently live as Markdown pages under `pages/projects`, with YAML front matter and project-specific Markdown content. Locate the project by short name, title, existing URL, or references from people/presentation data. Inspect the target page and comparable nearby projects before changing it. Do not invent a front-matter field when the page currently keeps repository links in its body.

## Verify and update project information

For a new GitHub repository or other external link:

1. Verify that the URL resolves, follows expected redirects, is publicly accessible when intended, and identifies the requested project or repository.
2. Add or update the link in the existing local structure—often a concise Markdown bullet—preserving wording, indentation, and ordering.
3. Change only the necessary lines. Do not rewrite surrounding prose unless required to make the requested update accurate.
4. Recheck references to the project's `shortname`; presentation and publication aggregation depends on exact short-name matches.

## Validate and deliver

Discover the current commands first. Typical checks are:

```bash
pre-commit run --all-files
pixi run check                 # or: bundle exec rake check
pixi run rubocop              # or: bundle exec rake rubocop
```

If a repository-wide check exposes a pre-existing or transient external-link failure, distinguish it from failures caused by this change. After hooks, inspect `git status` and remove unrelated modifications from the commit.

Create one focused commit, push the topic branch, and update or open a ready-for-review PR against the discovered default branch. Summarize the verified project link, the files changed, and validation performed.
