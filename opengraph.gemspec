# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'opengraph/version'

Gem::Specification.new do |spec|
  spec.name          = 'opengraph'
  spec.version       = OpenGraph::VERSION
  spec.authors       = ["Michael Bleigh"]
  spec.description   = %q{A very simple Ruby library for parsing Open Graph prototocol information from websites. See http://opengraphprotocol.org for more information.}
  spec.email         = %q{michael@intridea.com}

  spec.summary       = %q{A very simple Ruby library for parsing Open Graph prototocol information from websites. See http://opengraphprotocol.org for more information.}
  spec.homepage      = 'http://github.com/intridea/opengraph'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'hashie'
  spec.add_dependency 'nokogiri', '~> 1.5.0'
  spec.add_dependency 'rest-client', '~> 1.6.0'
  spec.add_development_dependency "rspec", ">= 2.0.0"
  spec.add_development_dependency 'webmock'
end
