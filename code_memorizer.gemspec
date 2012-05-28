# -*- encoding: utf-8 -*-
require File.expand_path('../lib/code_memorizer/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Henri Sack"]
  gem.email         = ["hsack@abriva.net"]
  gem.description   = %q{Easy access to models store in a config file via a 'has_config' method to be used with settingslogin gem}
  gem.summary       = %q{has_config to associate models in a config file}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "code_memorizer"
  gem.require_paths = ["lib"]
  gem.version       = CodeMemorizer::VERSION
end
