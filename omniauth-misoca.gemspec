# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/misoca/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-omniauth"
  spec.version       = Omniauth::Misoca::VERSION
  spec.authors       = ["Ruffnote Inc."]
  spec.email         = ["nishiko@ruffnote.com"]

  spec.summary       = %q{Unofficial OmniAuth strategy for Misoca.}
  spec.description   = %q{Unofficial OmniAuth strategy for Misoca.}
  spec.homepage      = "https://github.com/pandeiro245/omniauth-misoca"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|example)/}) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth', '>= 1.1.1'
  spec.add_runtime_dependency 'omniauth-oauth2', '>= 1.1.1'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 2.7"
  spec.add_development_dependency "simplecov"
end
