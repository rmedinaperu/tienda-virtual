# -*- encoding: utf-8 -*-
# stub: solidus_admin 0.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "solidus_admin".freeze
  s.version = "0.4.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.23".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/solidusio/solidus/releases?q=%22solidus_admin%2Fv0%22&expanded=true", "homepage_uri" => "https://github.com/solidusio/solidus/blob/main/admin/README.md", "rubygems_mfa_required" => "true", "source_code_uri" => "https://github.com/solidusio/solidus/tree/main/api" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Solidus Team".freeze]
  s.date = "2025-02-21"
  s.description = "Admin interface for the Solidus e-commerce framework.".freeze
  s.email = "contact@solidus.io".freeze
  s.homepage = "https://github.com/solidusio/solidus/blob/main/admin/README.md".freeze
  s.licenses = ["BSD-3-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.1.0".freeze)
  s.rubygems_version = "3.6.3".freeze
  s.summary = "Admin interface for the Solidus e-commerce framework.".freeze

  s.installed_by_version = "3.6.2".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<geared_pagination>.freeze, ["~> 1.1".freeze])
  s.add_runtime_dependency(%q<importmap-rails>.freeze, ["~> 1.2".freeze, ">= 1.2.1".freeze])
  s.add_runtime_dependency(%q<solidus_backend>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<solidus_core>.freeze, ["> 4.2".freeze])
  s.add_runtime_dependency(%q<stimulus-rails>.freeze, ["~> 1.2".freeze])
  s.add_runtime_dependency(%q<turbo-rails>.freeze, ["~> 2.0".freeze])
  s.add_runtime_dependency(%q<view_component>.freeze, ["~> 3.9".freeze])
end
