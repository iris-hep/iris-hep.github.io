
<div align = center>

# IRIS-HEP Website

*Source for the GitHub Pages site*
      
<br>
      
[![Badge Status]][Workflow]

<br>

---

![Badge Don't]

***Edit the repository directly, instead fork simply it and open <br>a pull request instead, to ensure your changes are tested!***
      
---

</div>

<br>

## Testing locally quick instructions (see [setup](https://iris-hep.org/docs/webdev) for full instructions):

```bash
gem install bundler
bundle install
bundle exec rake serve
```

Alternatively, you can test your changes out using the Jekyll docker image:
```bash
docker run --rm -it \
      --volume="$PWD:/srv/jekyll"  \
      -p 4000:4000 \
      jekyll/builder:stable jekyll serve --incremental
```
This will mount your checked out copy of this repo, then build and start the
jekyll server mapping it to port 4000 on your computer. You can make changes
locally and view them at http://localhost:4000


[Badge Status]: https://github.com/iris-hep/iris-hep.github.io-source/actions/workflows/ci.yml/badge.svg
[Badge Don't]: https://img.shields.io/badge/Don't-e33838?style=for-the-badge

[Workflow]: https://github.com/iris-hep/iris-hep.github.io-source/actions/workflows/ci.yml 'This badge indicates if the website was successfully built'
