# -*- encoding: utf-8 -*-
# stub: solidus 4.6.2 ruby lib

Gem::Specification.new do |s|
  s.name = "solidus".freeze
  s.version = "4.6.2".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.23".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/solidusio/solidus/blob/main/CHANGELOG.md", "homepage_uri" => "http://solidus.io", "rubygems_mfa_required" => "true", "source_code_uri" => "https://github.com/solidusio/solidus" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Solidus Team".freeze]
  s.date = "1980-01-02"
  s.description = "Solidus is an open source e-commerce framework for Ruby on Rails.".freeze
  s.email = "contact@solidus.io".freeze
  s.homepage = "http://solidus.io".freeze
  s.licenses = ["BSD-3-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.1.0".freeze)
  s.rubygems_version = "3.7.2".freeze
  s.summary = "Full-stack e-commerce framework for Ruby on Rails.".freeze

  s.installed_by_version = "3.6.2".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<solidus_api>.freeze, ["= 4.6.2".freeze])
  s.add_runtime_dependency(%q<solidus_backend>.freeze, ["= 4.6.2".freeze])
  s.add_runtime_dependency(%q<solidus_core>.freeze, ["= 4.6.2".freeze])
  s.add_runtime_dependency(%q<solidus_legacy_promotions>.freeze, ["= 4.6.2".freeze])
  s.add_runtime_dependency(%q<solidus_sample>.freeze, ["= 4.6.2".freeze])
end
