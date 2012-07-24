# -*- encoding: utf-8 -*-
require File.expand_path('../lib/melt/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Nicolas Santa"]
  gem.email         = ["nicolas55ar@gmail.com"]
  gem.description   = %q{agnostic XML/JSON responses}
  gem.summary       = %q{}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "melt"
  gem.require_paths = ["lib"]
  gem.version       = Melt::VERSION
  gem.add_dependency('yajl-ruby')
  gem.add_dependency('xml-simple')
  gem.add_development_dependency('rspec')

end
