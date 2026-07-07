# -*- encoding: utf-8 -*-
# stub: solidus_core 4.6.2 ruby lib

Gem::Specification.new do |s|
  s.name = "solidus_core".freeze
  s.version = "4.6.2".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.23".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "rubygems_mfa_required" => "true" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Solidus Team".freeze]
  s.date = "1980-01-02"
  s.description = "Essential models, mailers, and classes for the Solidus e-commerce project.".freeze
  s.email = "contact@solidus.io".freeze
  s.homepage = "http://solidus.io".freeze
  s.licenses = ["BSD-3-Clause".freeze]
  s.post_install_message = "-------------------------------------------------------------\n                Thank you for using Solidus\n-------------------------------------------------------------\nIf this is a fresh install, don't forget to run the Solidus\ninstaller with the following command:\n\n$ bin/rails g solidus:install\n\nIf you are updating Solidus from an older version, please run\nthe following commands to complete the update:\n\n$ bin/rails g solidus:update\n\nPlease, don't forget to look at the CHANGELOG to see what has changed and\nwhether you need to perform other tasks.\n\nhttps://github.com/solidusio/solidus/blob/main/CHANGELOG.md\n\nPlease report any issues at:\n- https://github.com/solidusio/solidus/issues\n- http://slack.solidus.io/\n-------------------------------------------------------------\n".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 3.1.0".freeze)
  s.rubygems_version = "3.7.2".freeze
  s.summary = "Essential models, mailers, and classes for the Solidus e-commerce project.".freeze

  s.installed_by_version = "3.6.2".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<actionmailer>.freeze, [">= 7.0".freeze, "< 8.1.0.beta1".freeze])
  s.add_runtime_dependency(%q<actionpack>.freeze, [">= 7.0".freeze, "< 8.1.0.beta1".freeze])
  s.add_runtime_dependency(%q<actionview>.freeze, [">= 7.0".freeze, "< 8.1.0.beta1".freeze])
  s.add_runtime_dependency(%q<activejob>.freeze, [">= 7.0".freeze, "< 8.1.0.beta1".freeze])
  s.add_runtime_dependency(%q<activemodel>.freeze, [">= 7.0".freeze, "< 8.1.0.beta1".freeze])
  s.add_runtime_dependency(%q<activerecord>.freeze, [">= 7.0".freeze, "< 8.1.0.beta1".freeze])
  s.add_runtime_dependency(%q<activestorage>.freeze, [">= 7.0".freeze, "< 8.1.0.beta1".freeze])
  s.add_runtime_dependency(%q<activesupport>.freeze, [">= 7.0".freeze, "< 8.1.0.beta1".freeze])
  s.add_runtime_dependency(%q<railties>.freeze, [">= 7.0".freeze, "< 8.1.0.beta1".freeze])
  s.add_runtime_dependency(%q<activemerchant>.freeze, ["~> 1.66".freeze])
  s.add_runtime_dependency(%q<acts_as_list>.freeze, ["< 2.0".freeze])
  s.add_runtime_dependency(%q<awesome_nested_set>.freeze, ["~> 3.3".freeze, ">= 3.7.0".freeze])
  s.add_runtime_dependency(%q<cancancan>.freeze, [">= 2.2".freeze, "< 4.0".freeze])
  s.add_runtime_dependency(%q<carmen>.freeze, ["~> 1.1.0".freeze])
  s.add_runtime_dependency(%q<discard>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<friendly_id>.freeze, ["~> 5.0".freeze])
  s.add_runtime_dependency(%q<image_processing>.freeze, ["~> 1.10".freeze])
  s.add_runtime_dependency(%q<kaminari-activerecord>.freeze, ["~> 1.1".freeze])
  s.add_runtime_dependency(%q<mini_magick>.freeze, ["~> 4.10".freeze])
  s.add_runtime_dependency(%q<monetize>.freeze, ["~> 1.8".freeze])
  s.add_runtime_dependency(%q<kt-paperclip>.freeze, [">= 6.3".freeze, "< 8".freeze])
  s.add_runtime_dependency(%q<psych>.freeze, [">= 4.0.1".freeze, "< 6.0".freeze])
  s.add_runtime_dependency(%q<ransack>.freeze, ["~> 4.0".freeze, "< 5".freeze])
  s.add_runtime_dependency(%q<sprockets-rails>.freeze, ["!= 3.5.0".freeze])
  s.add_runtime_dependency(%q<state_machines>.freeze, ["~> 0.6".freeze, "< 0.10.0".freeze])
  s.add_runtime_dependency(%q<state_machines-activerecord>.freeze, ["~> 0.6".freeze, "< 0.10.0".freeze])
  s.add_runtime_dependency(%q<omnes>.freeze, ["~> 0.2.2".freeze])
end
