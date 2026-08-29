---
name: iris-hep-website-add-presentation
description: Add or update an IRIS-HEP contributor presentation entry from a verified public Indico contribution or other authoritative presentation page.
---

# Add an IRIS-HEP presentation

Use this skill for focused presentation maintenance in <https://github.com/iris-hep/iris-hep.github.io>. Treat the checked-out repository as authoritative: inspect its current documentation, schemas, nearby entries, and PR templates before editing.

## Repository workflow

- Start from the latest upstream default branch. The repository currently uses `master`, not `main`; rediscover the default branch each time in case it changes.
- Inspect before editing. Confirm the target file, schema, ordering, formatting, and validation commands from the current checkout.
- Make only the requested change; do not reformat or modernize unrelated content.
- Never fabricate metadata or infer uncertain dates, locations, project tags, focus areas, speakers, or URLs. Explain unresolved ambiguity instead of guessing.
- Use repository conventions, including pre-commit formatting, and review every automated change.
- Finish with a focused commit, a pushed topic branch, and a ready-for-review pull request.

Read the current equivalents of `README.md`, `.github/CONTRIBUTING.md`, `pages/docs/webdev.md`, the task definitions (`pixi.toml`/`Rakefile`), `_scripts/people.schema.json`, `pages/docs/add_presentation.md`, and any applicable PR template. Do not hard-code commands that the checkout no longer recommends.

## Locate the contributor entry

Identify the contributor from the request, then locate the matching file under `_data/people` by name, GitHub username, or `shortname`; do not assume the filename. Inspect the full `presentations` list and several nearby entries to determine ordering, indentation, quoting, and scalar/list conventions.

Include public-facing talks related to IRIS-HEP, experiments/collaborations, IRIS-HEP topical meetings, training lectures, workshops/conferences, and posters. Minor internal working-meeting updates generally do not belong. The current schema does not represent multiple presenters; flag that limitation rather than inventing a representation.

## Verify Indico metadata

Parse the Indico host, event ID, and contribution ID from the supplied URL. Prefer the public export API on the same host:

```text
https://<indico-host>/export/event/<event-id>.json?detail=contributions&pretty=yes
```

Match the requested contribution by ID or canonical contribution URL. If the API is unavailable or incomplete, inspect the public contribution and event pages. Use only information shown by Indico or explicitly supplied by the user. Note any public slide/poster materials and recording links, but do not invent a `slides` field.

Map verified metadata as follows:

- `title`: official contribution title, preserving capitalization and punctuation.
- `date`: scheduled presentation date in `YYYY-MM-DD`, not merely the event start date for a multi-day event. Stop if it cannot be determined.
- `url`: canonical contribution page, not a PDF/PPTX attachment.
- `meeting`: official event title; `meetingurl`: canonical event-level URL.
- `location`: only when explicitly established; use `Virtual` only when clearly virtual.
- `project`, `focus-area`, and other tags: only when an exact existing repository short name and association are unambiguous.
- `video` or `recordingurl`: only for a stable public recording supported by the schema and nearby entries.

For non-Indico presentations, use the direct authoritative presentation page and follow nearby repository conventions.

## Avoid duplicates and edit minimally

Search the contributor file and repository for the exact contribution ID or canonical URL, event/contribution ID pair, and normalized title/date. Treat repeated titles on different dates as distinct. Update an existing incomplete entry rather than adding a duplicate.

Insert the entry according to the file's current ordering and formatting. Quote YAML strings when punctuation could be parsed structurally, especially `: `, `#`, or leading special characters. Review the rendered YAML structure and `git diff --check`, then inspect the diff line by line.

## Validate and deliver

Discover the current commands first. Typical checks are:

```bash
pre-commit run --all-files
pixi run check                 # or: bundle exec rake check
pixi run rubocop              # or: bundle exec rake rubocop
```

If a repository-wide check exposes a pre-existing or transient external-link failure, distinguish it from failures caused by this change. After hooks, inspect `git status` and remove unrelated modifications from the commit.

Create one focused commit, push the topic branch, and update or open a ready-for-review PR against the discovered default branch. Summarize the source metadata, slide/recording availability, and validation performed.
