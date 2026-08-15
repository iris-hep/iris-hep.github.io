---
name: iris-hep-website-maintenance
description: Maintain IRIS-HEP contributor and project entries, especially adding talks from public Indico contribution URLs and making small project-page updates.
---

# IRIS-HEP website maintenance

Use this skill for focused maintenance in <https://github.com/iris-hep/iris-hep.github.io>. Treat the checked-out repository as authoritative: inspect its current documentation, schemas, nearby entries, tasks, and PR templates before editing. Do not rely on remembered paths or formats when they disagree with the repository.

## Non-negotiable rules

- Start from the latest upstream default branch. The repository currently uses `master`, not `main`; rediscover the default branch each time in case it changes.
- Inspect before editing. Confirm the target file, schema, ordering, formatting, and validation commands from the current checkout.
- Make only the requested change. Do not reformat, correct, or modernize unrelated content.
- Never fabricate metadata or infer uncertain dates, locations, project tags, focus areas, speakers, or URLs. Explain unresolved ambiguity instead of guessing.
- Use repository conventions, including its pre-commit formatting. Review every automated change before committing.
- Finish with a focused commit, a pushed topic branch, and a GitHub pull request that is **Ready for Review**, not a draft.

## Prepare the checkout

Identify which remote points to the canonical `iris-hep/iris-hep.github.io` repository and which remote is writable. Then discover and update the canonical default branch before creating a topic branch. A typical sequence is:

```bash
git remote -v
git remote show upstream  # or origin; note the "HEAD branch"
git fetch --all --prune
git switch <default-branch>
git pull --ff-only <canonical-remote> <default-branch>
git switch -c <focused-branch-name>
```

Read the current equivalents of `README.md`, `.github/CONTRIBUTING.md`, `pages/docs/webdev.md`, the task definitions (`pixi.toml`/`Rakefile`), relevant schemas under `_scripts`, and any applicable PR template. Do not hard-code commands that the checkout no longer recommends.

## Workflow 1: Add a talk from Indico

### 1. Locate the person entry and current conventions

Identify the contributor from the user's request, then locate the matching file under `_data/people` by name, GitHub username, or `shortname`; do not assume the filename. For example, Gordon Watts currently appears in `_data/people/gordonwatts.yml`. Inspect the full `presentations` list and several recent entries in the target file. Determine its actual ordering and formatting conventions; many files place newer talks after older ones, use two-space indentation, and use scalar or list forms according to whether a field has one or multiple values.

Also inspect `_scripts/people.schema.json` and `pages/docs/add_presentation.md`. The current schema requires `title`, `date`, and `url`; supported optional fields include `meeting`, `meetingurl`, `location`, `focus-area`, `challenge-area`, `project`, `comment`, `labels`, `video`, and `recordingurl`. Do not add unsupported keys such as `slides`.

Include talks that are related to IRIS-HEP and are public-facing, experiment/collaboration presentations, IRIS-HEP topical meetings, training lectures, workshops/conferences, or posters. Minor internal working-meeting updates generally do not belong. Multiple presenters are not currently represented by the schema; flag that limitation rather than inventing a representation.

### 2. Retrieve and verify metadata

Parse the Indico host, event ID, and contribution ID from the supplied URL. Prefer the public Indico export API on the same host:

```text
https://<indico-host>/export/event/<event-id>.json?detail=contributions&pretty=yes
```

Match the requested contribution by its ID or canonical contribution URL. Identify any public slide/poster materials and recording links while verifying the metadata. If the API is unavailable, incomplete, protected, or does not expose materials, inspect the public contribution and event pages. Use only information actually shown by Indico or explicitly supplied by the user.

Map metadata as follows:

- `title`: contribution title, preserving official capitalization and punctuation.
- `date`: the scheduled presentation date in `YYYY-MM-DD`, not merely the event start date when the event spans multiple days. If the contribution date is not determinable, stop and report the ambiguity.
- `url`: for Indico, the canonical **contribution page**, not a PDF/PPTX attachment. Verify that slides/poster materials are linked there when available, but do not invent a `slides` field unless the current schema has added one. For a non-Indico talk, use the direct presentation or the page containing it, following nearby entries.
- `meeting`: official event title.
- `meetingurl`: canonical event-level URL.
- `location`: add only when explicitly established; use `Virtual` only when the event is clearly virtual.
- `project`, `focus-area`, and other optional tags: add only when an exact repository short name is supported by existing project/focus-area data and the association is unambiguous. Otherwise omit and mention the uncertainty.
- `video` or `recordingurl`: use only when a stable public recording is clearly identified and the surrounding entries/schema support it.

### 3. Detect duplicates

Before editing, search the target contributor's file and the repository for:

- the exact contribution ID or canonical URL;
- the same event ID plus contribution ID;
- the same normalized title and date.

Treat repeated titles on different dates as distinct talks. If an entry already exists but has incomplete or incorrect metadata, update it minimally instead of adding another copy.

### 4. Edit and review

Insert the entry at the position required by the file's current ordering. Match neighboring quoting, indentation, scalar/list choices, and URL style. Quote YAML strings when punctuation could be parsed structurally, especially `: `, `#`, or leading special characters. Keep the diff limited to the intended entry.

Review the rendered YAML structure and `git diff --check`; then inspect `git diff` line by line.

## Workflow 2: Update project information

Projects currently live as Markdown pages under `pages/projects`, with YAML front matter and project-specific Markdown content. Locate the project by short name, title, existing URL, or references from people/presentation data. Inspect the target page and comparable nearby projects before changing it; do not invent a new front-matter field when the page currently keeps repository links in its body.

For a new GitHub repository or other external link:

1. Verify that the URL resolves, follows expected redirects, is publicly accessible when intended, and identifies the requested project/repository.
2. Add or update the link in the existing local structure—often a concise Markdown bullet—preserving wording, indentation, and ordering.
3. Change only the necessary lines. Do not rewrite surrounding prose unless required to make the requested update accurate.
4. Recheck references to the project's `shortname`; presentation/publication aggregation depends on exact short-name matches.

## Validate, commit, and open the PR

Discover the current commands first. The repository presently supports both `pixi` and Bundler. Typical current validation is:

```bash
# First-time environment setup, if needed
pixi run install                 # or: bundle install

# Repository formatting/schema checks
pre-commit run --all-files

# Site/link checks and CI-equivalent Ruby/build checks
pixi run check                   # or: bundle exec rake check
pixi run rubocop                 # or: bundle exec rake rubocop
```

If a repository-wide check exposes a pre-existing or transient external-link failure, distinguish it clearly from failures caused by the change; never silently ignore a new failure. After hooks run, inspect `git status` and revert any unrelated modifications. Re-run the relevant checks until the intended diff is clean.

Create one focused commit, for example:

```bash
git add <intended-files>
git commit -m "Add <short talk title> to <contributor> presentations"
# or: git commit -m "Add <repository> to <project> page"
git push -u <writable-remote> <branch>
```

Open the PR against the discovered default branch. For talks, use the current presentation PR template and complete its checklist; currently it specifically checks that `url` is the Indico contribution page and `meetingurl` is the overall event. Summarize the source metadata, slide/recording availability, and validation performed. With GitHub CLI, `gh pr create --base <default-branch> ...` creates a ready PR unless `--draft` is supplied; run `gh pr ready` if necessary. Confirm the PR is marked **Ready for Review**, and report its URL plus any remaining ambiguity or validation limitation.
