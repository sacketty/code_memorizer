# -*- encoding: utf-8 -*-
require File.expand_path('../lib/code_memorizer/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Henri Sack"]
  gem.email         = ["hsack@abriva.net"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "code_memorizer"
  gem.require_paths = ["lib"]
  gem.version       = CodeMemorizer::VERSION
end
