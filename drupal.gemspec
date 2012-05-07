# -*- encoding: utf-8 -*-
require File.expand_path('../lib/drupal/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Clément Hussenot"]
  gem.email         = ["Chussenot@gmail.com"]
  gem.description   = %q{A datamapper wrapper for a drupal database.. great for migrations - repackage original dm-drupal gem}
  gem.summary       = %q{}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "dm-drupal2"
  gem.require_paths = ["lib"]
  gem.version       = Drupal::VERSION
end
