[![CI](https://github.com/iris-hep/iris-hep.github.io/actions/workflows/deploy.yml/badge.svg)](https://github.com/iris-hep/iris-hep.github.io/actions/workflows/deploy.yml)

Is this badge red? Click on it to find out what's wrong with the repository...

# iris-hep.org Website

GitHub pages for IRIS-HEP project website.

Even if you have edit permissions, please make a pull request. The advantage of
making a pull request instead of directly editing is that changes made via pull
request will be tested to ensure that all is ok with your changes...


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
