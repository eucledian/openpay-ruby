# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'version'

Gem::Specification.new do |spec|
  spec.name          = 'openpay'
  spec.version       = Openpay::VERSION
  spec.authors       = ['Eucledian']
  spec.email         = ['info@eucledian.com']
  spec.description   = 'ruby client for Openpay API services '
  spec.summary       = 'ruby api for openpay resources'
  spec.homepage      = 'http://openpay.mx/'
  spec.license       = 'Apache'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ['lib', 'lib/openpay', 'openpay', '.']

  spec.add_runtime_dependency 'rest-client', '>= 2.0.0'
  spec.add_runtime_dependency 'json'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'json_spec'
  spec.post_install_message = 'Thanks for installing openpay. Enjoy !'
end
