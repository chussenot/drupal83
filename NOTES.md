build process

gem build drupal83.gemspec
gem push drupal83-*.*.*.gem
bundle
rake -T
rake build
rake install
rake release