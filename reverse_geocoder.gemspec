# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reverse_geocoder/version'

Gem::Specification.new do |spec|
  spec.name          = "reverse_geocoder"
  spec.version       = ReverseGeocoder::VERSION
  spec.authors       = ["Sean McCann"]
  spec.email         = ["sean@seanmcann.ca"]
  spec.summary       = "Reverse geocoder for Data Science Toolkit"
  spec.description   = "Reverse geocoder for Data Science Toolkit"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "curl"
  spec.add_dependency "oj"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
