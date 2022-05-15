
<div align = center>

# IRIS-HEP Website

*Source for the GitHub Pages site*

<br>

[![Badge Status]][Workflow]

<br>

---

[![Badge Don't]](#)

***Edit the repository directly, instead fork simply it and open*** <br>
***a pull request instead, to ensure your changes are tested!***

---

</div>

<br>
<br>

## Installation

*Instructions for local testing.*

<br>
<br>

**For a thorough guide, check the [Full Setup]** .

<br>

### Standard

1. Download or clone the repository

2. Install with:

    ```sh
    gem install bundler
    bundle install
    bundle exec rake serve
    ```

<br>

### Docker

*Alternatively use the Jekyll image.*

<br>

The following will mount your checked-out <br>
copy or this repository, then build and start <br>
the jekyll server.

The server will run locally on port `4000` .

```sh
docker run                              \
    --rm -it                            \
    --volume="$PWD:/srv/jekyll"         \
    -p 4000:4000                        \
    jekyll/builder:stable jekyll serve  \
    --incremental
```

<br>

Afterwards you can make changes locally <br>
& view them at [`http://localhost:4000`] .



[Badge Status]: https://github.com/iris-hep/iris-hep.github.io-source/actions/workflows/ci.yml/badge.svg
[Badge Don't]: https://img.shields.io/badge/Don't-e33838?style=for-the-badge

[Workflow]: https://github.com/iris-hep/iris-hep.github.io-source/actions/workflows/ci.yml 'This badge indicates if the website was successfully built'

[Full Setup]: https://iris-hep.org/docs/webdev

[`http://localhost:4000`]: http://localhost:4000
