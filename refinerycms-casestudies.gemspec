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
  s.date              = Time.now
  s.summary           = 'Casestudies extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]
  s.license           = 'MIT'

  # Runtime dependencies
  s.add_dependency    'refinerycms-core',     '~> 2.1.0'
  s.add_dependency    'friendly_id',          '~> 4.0.4'

end
