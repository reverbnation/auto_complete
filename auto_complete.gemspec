# -*- encoding: utf-8; mode: ruby; -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'auto_complete/version'

Gem::Specification.new do |spec|
  spec.name          = "auto_complete"
  spec.version       = AutoComplete::VERSION
  spec.authors       = ["Andrew Watts"]
  spec.email         = ["awatts@reverbnation.com"]
  spec.description   = "ReverbNation's gemified version of Rails' ancient auto_complete functionality."
  spec.summary       = "ReverbNation's gemified version of Rails' ancient auto_complete functionality."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "~> 3.2.16"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "gemfury"
  spec.add_development_dependency "rake"
end
