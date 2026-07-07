# -*- encoding: utf-8 -*-
# stub: solidus_auth_devise 2.5.9 ruby lib

Gem::Specification.new do |s|
  s.name = "solidus_auth_devise".freeze
  s.version = "2.5.9".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/solidusio/solidus_auth_devise/releases", "homepage_uri" => "https://github.com/solidusio/solidus_auth_devise", "source_code_uri" => "https://github.com/solidusio/solidus_auth_devise" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Solidus Team".freeze]
  s.bindir = "exe".freeze
  s.date = "2024-01-30"
  s.email = "contact@solidus.io".freeze
  s.homepage = "https://github.com/solidusio/solidus_auth_devise".freeze
  s.licenses = ["BSD-3-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new([">= 2.5".freeze, "< 4".freeze])
  s.rubygems_version = "3.4.10".freeze
  s.summary = "Provides authentication and authorization services for use with Solidus by using Devise and CanCan.".freeze

  s.installed_by_version = "3.6.2".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<deface>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<devise>.freeze, ["~> 4.1".freeze])
  s.add_runtime_dependency(%q<devise-encryptable>.freeze, ["= 0.2.0".freeze])
  s.add_runtime_dependency(%q<solidus_core>.freeze, [">= 3".freeze, "< 5".freeze])
  s.add_runtime_dependency(%q<solidus_support>.freeze, ["~> 0.5".freeze])
  s.add_development_dependency(%q<solidus_backend>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<solidus_frontend>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<solidus_dev_support>.freeze, ["~> 2.5".freeze])
  s.add_development_dependency(%q<rails-controller-testing>.freeze, [">= 0".freeze])
end
