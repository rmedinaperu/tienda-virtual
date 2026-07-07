# -*- encoding: utf-8 -*-
# stub: solidus_backend 4.6.2 ruby lib

Gem::Specification.new do |s|
  s.name = "solidus_backend".freeze
  s.version = "4.6.2".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.23".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "rubygems_mfa_required" => "true" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Solidus Team".freeze]
  s.date = "1980-01-02"
  s.description = "Admin interface for the Solidus e-commerce framework.".freeze
  s.email = "contact@solidus.io".freeze
  s.homepage = "http://solidus.io".freeze
  s.licenses = ["BSD-3-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.1.0".freeze)
  s.rubygems_version = "3.7.2".freeze
  s.summary = "Admin interface for the Solidus e-commerce framework.".freeze

  s.installed_by_version = "3.6.2".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<solidus_api>.freeze, ["= 4.6.2".freeze])
  s.add_runtime_dependency(%q<solidus_core>.freeze, ["= 4.6.2".freeze])
  s.add_runtime_dependency(%q<font-awesome-rails>.freeze, ["~> 4.0".freeze])
  s.add_runtime_dependency(%q<jbuilder>.freeze, ["~> 2.8".freeze])
  s.add_runtime_dependency(%q<jquery-rails>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<kaminari>.freeze, ["~> 1.1".freeze])
  s.add_runtime_dependency(%q<responders>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<sassc-rails>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<handlebars_assets>.freeze, ["~> 0.23".freeze])
end
