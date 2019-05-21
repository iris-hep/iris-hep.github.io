---
permalink: /docs/webdev.html
layout: default
title: Developing the IRIS-HEP website
pagetype: doc
---

### Running locally

The site is built with Jekyll, and is easy to run locally if you have Ruby.
Visit [this page](https://jekyllrb.com/docs/installation/) for information about installing Ruby if your current version is too old.

To set up a "bundle" (local virtual environment in Python terms):

```bash
bundle install
```

Now, you can use `bundle exec` to run a command in the new environment you just created, such as:

```bash
bundle exec jekyll serve
```


### Updating javascript files

If you add or change a javascript file, you need to edit the page `/includes/head.html` and add the new hash in the identity part of the script include. You can generate the hash for a file, like `assets/js/myfile.js`,  using:

```bash
cat assets/js/myfile.js | openssl dgst -sha384 -binary | openssl base64 -A
```

Run the site locally and verify no warnings appear in your terminal. Also turn on your browser's debugger and make sure no warnings are emitted.

