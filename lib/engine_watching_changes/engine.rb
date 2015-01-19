module EngineWatchingChanges
  class Engine < ::Rails::Engine
    isolate_namespace EngineWatchingChanges

    config.generators do |g|
      g.test_framework :rspec, fixture: false
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
      g.integration_tool :rspec
      g.assets false
      g.helper false
    end

  end
end
