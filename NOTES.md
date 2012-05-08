build process

gem build drupal83.gemspec
gem push drupal83-0.0.1.gem
bundle
rake -T
rake build
rake install
rake release