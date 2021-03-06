# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'git_models/version'

Gem::Specification.new do |spec|
  spec.name          = 'git_models'
  spec.version       = GitModels::VERSION
  spec.authors       = ['Mike Weaver']
  spec.email         = ['mike@weaverfamily.net']
  spec.summary       = %q{Rails models for Git data.}
  spec.homepage      = ''

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['app', 'lib']

  spec.add_dependency 'rails', '4.2.7.1'
  spec.add_dependency 'hobo_fields', '2.2.6'
  spec.add_dependency 'git_lib', '1.0.0'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 11.0'
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'fakefs', '~> 0.9.3'
  spec.add_development_dependency "sqlite3"
end
