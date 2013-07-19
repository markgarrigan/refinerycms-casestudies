# Encoding: UTF-8
$:.push File.expand_path("../lib/refinery", __FILE__)
require 'casestudies/version'

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-casestudies'
  s.authors           = ['Mark Garrigan']
  s.email             = ['mark@markgarrigan.com']
  s.homepage          = 'http://github.com/markgarrigan/refinerycms-casestudies'
  s.version           = Casestudies::VERSION
  s.description       = 'Ruby on Rails Casestudies extension for Refinery CMS'
  s.date              = '2013-07-18'
  s.summary           = 'Casestudies extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]

  # Runtime dependencies
  s.add_dependency             'refinerycms-core',    '~> 2.0.10'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing', '~> 2.0.10'
end
