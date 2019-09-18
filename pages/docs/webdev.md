---
permalink: /docs/webdev.html
layout: default
title: Developing the IRIS-HEP website
pagetype: doc
---

### Getting the source

The webite source is available at <https://github.com/iris-hep/iris-hep.github.io-source>.

You can always click the edit button to make small edits to the website source, but if you want to test locally or make larger edits, you'll want to clone the source for the website and build it with Ruby.

### Installing Ruby

You should have Ruby 2.4+ for Jekyll. Since the latest macOS comes with 2.3 (and Apple is dropping scripting language from macOS in the future), you'll want a newer version even on a mac. You can use rbenv to manage multiple ruby versions. On macOS with homebrew, you'll want:

```bash
brew install rbenv
```


You'll need to run `rbenv init` and follow the instructions for your current shell. After you've installed rbenv on your system, use:

```bash
rbenv install 2.6.3
```

to get a current version of ruby. Then, inside the main iris-hep website directory, run:

```bash
rbenv local 2.6.3
```

This will run the Ruby you just built whenever you enter this directory. You'll want to install bundler too:

```bash
gem bundle
```


### Running locally

The site is built with Jekyll, and is easy to run locally if you have Ruby.
Visit [this page](https://jekyllrb.com/docs/installation/) for information about installing Ruby if your current version is too old.

To set up a "bundle" (local virtual environment in Python terms):

```bash
bundle install
```

Now, you can use `bundle exec` to run a command in the new environment you just created, such as:

```bash
bundle exec rake serve
```

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

Most style changes should be set in `assets/css/style.scss`. Some basic changes, like color variables, are set in the `_sass` directory. Please remember to consider multiple screen widths, printing (for relevant pages), and dark mode when changing or adding styles.
