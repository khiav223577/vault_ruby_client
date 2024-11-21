# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vault/version'

Gem::Specification.new do |spec|
  spec.name          = 'vault_ruby_client'
  spec.version       = Vault::VERSION
  spec.authors       = ['khiav reoy']
  spec.email         = ['khiav223577@gmail.com']

  spec.summary       = 'Vault is a Ruby API client for interacting with a Vault server.'
  spec.description   = 'Vault is a Ruby API client for interacting with a Vault server.'
  spec.homepage      = 'https://github.com/khiav223577/vault_ruby_client'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #  raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.required_ruby_version = ">= 2.0"
  if Gem::Version.new(RUBY_VERSION) <= Gem::Version.new("2.4.0")
    spec.add_runtime_dependency "aws-sigv4", "= 1.6.0"
    spec.add_runtime_dependency "aws-eventstream", "= 1.2.0"
  else
    spec.add_runtime_dependency "aws-sigv4"
  end

  spec.files         = `git ls-files -z`.split("\x0").reject{|f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}){|f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.metadata      = {
    'homepage_uri'      => 'https://github.com/khiav223577/vault_ruby_client',
    'changelog_uri'     => 'https://github.com/khiav223577/vault_ruby_client/blob/master/CHANGELOG.md',
    'source_code_uri'   => 'https://github.com/khiav223577/vault_ruby_client',
    'documentation_uri' => 'https://www.rubydoc.info/gems/vault_ruby_client',
    'bug_tracker_uri'   => 'https://github.com/khiav223577/vault_ruby_client/issues',
  }

  spec.add_development_dependency "bundler", "~> 2"
  spec.add_development_dependency "rake",    "~> 13.2"
  spec.add_development_dependency "rspec",   "~> 3.13"
  spec.add_development_dependency "webmock", "~> 3.24"
  spec.add_development_dependency "webrick", "~> 1.9"
end
