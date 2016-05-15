# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'babel/es6/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "babel-es6-rails"
  spec.version       = Babel::Es6::Rails::VERSION
  spec.authors       = ["Kramer Campbell"]
  spec.email         = ["kramer@kramerc.com"]

  spec.summary       = %q{Adds the Babel transpiler for Sprockets 4 and makes Rails generate ES6 scripts by default.}
  spec.description   = %q{Adds the Babel transpiler for Sprockets 4 and makes Rails generate ES6 scripts by default.}
  spec.homepage      = "https://github.com/kramerc/babel-es6-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "railties"
  spec.add_dependency "sprockets", ">= 4.0.0.beta"
  spec.add_dependency "babel-transpiler"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
