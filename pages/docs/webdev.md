---
permalink: /docs/webdev.html
layout: default
title: Developing the IRIS-HEP website
pagetype: doc
---

### Getting the source

The website source is available at <https://github.com/iris-hep/iris-hep.github.io>.

You can always click the edit button to make small edits to the website source, but if you want to test locally or make larger edits, you'll want to clone the source for the website and build it with Ruby.

### Installing Ruby

Visit [this page](https://jekyllrb.com/docs/installation/) for information about installing Ruby if your current version is too old; the instructions there form the basis for what you see here, and come in variants for all major operating systems.
You should have Ruby 2.6+ for Jekyll; 3.1 recommended and used in CI. You can use rbenv to manage multiple ruby versions. On macOS with homebrew, you'll want:

```bash
brew install rbenv
```

You'll need to run `rbenv init` and follow the instructions for your current shell. After you've installed rbenv on your system, use:

```bash
rbenv install 3.1.2
```

to get a current version of ruby. Then, inside the main iris-hep website directory, run:

```bash
rbenv local 3.1.2
```

This will run the Ruby you just built whenever you enter this directory. You'll want to install bundler too:

```bash
gem install bundle
```

(You may want to add `--user-install` here if you are not using rbenv. And if
you don't have permission to install, and you are using rbenv, this means you
forgot to set it up with `rbenv init`.)


### Running locally

The site is built with Jekyll, and is easy to run locally if you have Ruby.

To set up a "bundle" (local virtual environment in Python terms):

```bash
bundle install
```

Now, you can use `bundle exec` to run a command in the new environment you just created, such as:

```bash
bundle exec rake serve
```

> Note: If prefixing everything with `bundle exec` bothers you, you can run `bundle --install binstubs`, then use `bin/*` to run commands. See [this page](https://github.com/rbenv/rbenv/wiki/Understanding-binstubs) for more info.
> You can then add a folder `mkdir -p .git/safe`, and add the following to your `PATH`: `.git/safe/../../bin`. This will give you a per-folder controllable way to
dd `./bin` to your path. Now, you can just use `rake` and other commands directly.

This will incrementally rebuild if anything changes in your directory. Exit with Control-C. If you want to build the site including all basic link checks (this should pass on master):

```bash
bundle exec rake check
```

If you want to also perform the full link checking without exclusions, you can run:

```bash
bundle exec rake checkall
```

If you are not familiar with it, `rake` is short for "Ruby make". The `clean` and `clobber` targets are available (the later removes the Inspire-HEP cache as well). You can also run `bundle exec jekyll ...` directly.

### Updating javascript files

If you add or change a javascript file, you need to edit the page `/includes/head.html` and add the new hash in the identity part of the script include. You can generate the hash for a file, like `assets/js/myfile.js`,  using:

```bash
cat assets/js/myfile.js | openssl dgst -sha384 -binary | openssl base64 -A
```

Run the site locally and verify no warnings appear in your terminal. Also turn on your browser's debugger and make sure no warnings are emitted.

### Styles

Most style changes should be set in `assets/css/style.scss`. Some basic changes, like color variables, are set in the `_sass` directory. Please remember to consider multiple screen widths, printing (for relevant pages), and dark mode when changing or adding styles. You can see the defined colors [here](/docs/logos).

### Caching

The website has two forms of caching. It will save InspireHEP access data in `_cache`, and it optionally can download the Indico accesses to `_data/indico`. If you use

```bash
bundle exec rake clobber
```

You will remove the cache (`clean` will only remove the web files, not the cache). If you want to generate the optional part of the cache, you can run

```bash
bundle exec rake cache
```

The InspireHEP access caching is automatic and is part of the normal Jekyll build.


### Pre-commit

This repository uses pre-commit to check and cleanup minor style issues. You can install pre-commit with `brew install pre-commit` (macOS), `pipx install pre-commit` if you are a pipx user (and you should be), or `pip install pre-commit`. Then run `pre-commit run -a` to check manually, or `pre-commit install` to check before every commit.

### Accessing Indico

The Indico access needs a token to authenticate to get protected meeting listings. This is normally done by GitHub Actions, but you can do it yourself by setting the `INDICO_TOKEN` environment variable (see [this page](https://docs.getindico.io/en/stable/http_api/access/#api-authentication) for information on how to generate these keys).
