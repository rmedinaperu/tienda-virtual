# -*- encoding: utf-8 -*-
# stub: solidus_legacy_promotions 4.6.2 ruby lib

Gem::Specification.new do |s|
  s.name = "solidus_legacy_promotions".freeze
  s.version = "4.6.2".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.23".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "rubygems_mfa_required" => "true" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Solidus Team".freeze]
  s.date = "1980-01-02"
  s.description = "Legacy Solidus promotion system".freeze
  s.email = "contact@solidus.io".freeze
  s.homepage = "http://solidus.io".freeze
  s.licenses = ["BSD-3-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.1.0".freeze)
  s.rubygems_version = "3.7.2".freeze
  s.summary = "Legacy Solidus promotion system".freeze

  s.installed_by_version = "3.6.2".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<csv>.freeze, ["~> 3.0".freeze])
  s.add_runtime_dependency(%q<solidus_api>.freeze, ["= 4.6.2".freeze])
  s.add_runtime_dependency(%q<solidus_core>.freeze, ["= 4.6.2".freeze])
  s.add_runtime_dependency(%q<solidus_support>.freeze, [">= 0.13.1".freeze, "< 1".freeze])
end
