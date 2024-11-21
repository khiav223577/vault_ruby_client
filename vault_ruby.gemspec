# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vault/version'

Gem::Specification.new do |spec|
  spec.name          = 'vault_ruby'
  spec.version       = Vault::VERSION
  spec.authors       = ['khiav reoy']
  spec.email         = ['khiav223577@gmail.com']
  spec.licenses      = ["MPL-2.0"]

  spec.summary       = "Vault is a Ruby API client for interacting with a Vault server."
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/khiav223577/vault_ruby"

  spec.files         = Dir["lib/**/**/**"]
  spec.files        += ["README.md", "CHANGELOG.md", "LICENSE"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.0"
  if Gem::Version.new(RUBY_VERSION) <= Gem::Version.new("2.4.0")
    spec.add_runtime_dependency "aws-sigv4", "= 1.6.0"
    spec.add_runtime_dependency "aws-eventstream", "= 1.2.0"
  else
    spec.add_runtime_dependency "aws-sigv4"
  end

  spec.add_development_dependency "bundler", "~> 2"
  spec.add_development_dependency "rake",    "~> 12.0"
  spec.add_development_dependency "rspec",   "~> 3.5"
  spec.add_development_dependency "webmock", "~> 3.8.3"
end
