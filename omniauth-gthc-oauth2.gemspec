# -*- encoding: utf-8 -*-
require File.expand_path(File.join('..', 'lib', 'omniauth', 'gthc_oauth2', 'version'), __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "omniauth-gthc-oauth2"
  gem.version       = OmniAuth::GthcOauth2::VERSION
  gem.summary       = %q{Duke OAuth 2 strategy for OmniAuth}
  gem.description   = %q{Duke OAuth 2 strategy for OmniAuth}
  gem.authors       = ["Aman Ibrahim", "Duke University Innovation Co-Lab"]
  gem.email         = ["aman.ibrahim@duke.edu"]
  gem.homepage      = "http://dev.colab.duke.edu/"

  gem.files         = `git ls-files`.split("\n")
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'omniauth', '~> 1.1'
  gem.add_runtime_dependency 'omniauth-oauth2', '~> 1.3'
end
