# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{suppress_validations}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Patrik Hedman"]
  s.date = %q{2009-07-03}
  s.description = %q{A Rails plugin that let's you temporarily suppress ActiveRecord validations}
  s.email = %q{patrik@moresale.se}
  s.files = [
     "MIT-LICENSE",
     "README",
     "Rakefile",
     "install.rb",
     "uninstall.rb",
     "suppress_validations.gemspec",
     "lib/suppress_validations.rb",
     "rails/init.rb"
  ]
  s.homepage = %q{http://github.com/polly/ffmpeg}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{Need to write one}
  s.test_files = [
    "test/database.yml",
    "test/schema.rb",
    "test/suppress_validations_test.rb",
    "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
