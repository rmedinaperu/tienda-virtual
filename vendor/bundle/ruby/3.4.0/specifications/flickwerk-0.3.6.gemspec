# -*- encoding: utf-8 -*-
# stub: flickwerk 0.3.6 ruby lib

Gem::Specification.new do |s|
  s.name = "flickwerk".freeze
  s.version = "0.3.6".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/friendlycart/flickwerk/blob/main/CHANGELOG.md", "homepage_uri" => "https://github.com/friendlycart/flickwerk", "source_code_uri" => "https://github.com/friendlycart/flickwerk" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Martin Meyerhoff".freeze]
  s.bindir = "exe".freeze
  s.date = "1980-01-02"
  s.description = "Support for lazy loading patches in Rails engines".freeze
  s.email = ["mamhoff@gmail.com".freeze]
  s.executables = ["flickwerk".freeze]
  s.files = ["exe/flickwerk".freeze]
  s.homepage = "https://github.com/friendlycart/flickwerk".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.0.0".freeze)
  s.rubygems_version = "3.6.7".freeze
  s.summary = "Support for lazy loading patches in Rails engines".freeze

  s.installed_by_version = "3.6.2".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<railties>.freeze, [">= 7.0".freeze])
end
