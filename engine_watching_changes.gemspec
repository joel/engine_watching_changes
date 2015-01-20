$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "engine_watching_changes/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "engine_watching_changes"
  s.version     = EngineWatchingChanges::VERSION

  s.authors     = ['Joel AZEMAR']
  s.email       = ['joel.azemar@gmail.com']
  s.homepage    = 'https://github.com/joel/engine_watching_changes'
  s.summary     = 'Summary of EngineWatchingChanges.'
  s.description = 'Description of EngineWatchingChanges.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  # s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(spec)/})
  s.require_paths = ['lib']

  s.add_dependency 'rails', '~> 4.2.0'
  # s.add_dependency 'moderation', '~> 0.0.3'
  s.add_development_dependency 'rspec-rails', '~> 3.1'
  # s.add_development_dependency 'rspec', '~> 3.1'
  # s.add_development_dependency 'gemnasium', '~> 3.2'
  # s.add_development_dependency 'coveralls', '~> 0.7'

  s.required_ruby_version = '~> 2.2'

  s.test_files = Dir['spec/**/*']
end
