---
layout: default
title: Information for developing the website
---

### SRI hashes

  As described [here](https://developer.mozilla.org/en-US/docs/Web/Security/Subresource_Integrity), one can generate the hash with:

  * shasum -b -a 384 thefile.css  \| xxd -r -p \| base64

The output from this command should be used as the integrity parameters,
with "sha384-" as a prefix.

### Information on bootstrap

  * [Website](https://getbootstrap.com/)

### For everything else
