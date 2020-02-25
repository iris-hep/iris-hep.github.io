[![Travis status](https://travis-ci.com/iris-hep/iris-hep.github.io-source.svg?branch=master)](https://travis-ci.com/iris-hep/iris-hep.github.io-source)

Is this badge red? Click on it to find whats wrong with the repository...

# iris-hep.github.io

GitHub pages for IRIS-HEP website

Do not make a PR to the output repository directly! Instead, make pull requests to the [iris-hep.github.io-source repository](https://github.com/iris-hep/iris-hep.github.io-source/). The advantage of making a pull request instead of directly editing is that changes made via pull request will be tested to ensure that all is ok with your changes...


## Testing locally quick instructions (see [setup](https://iris-hep.org/docs/webdev) for full instructions):

```bash
gem install bundler
bundle install
bundle exec rake serve
```
