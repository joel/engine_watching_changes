require 'singleton'

module EngineWatchingChanges
  class Repository
    include Singleton

    attr_reader :store

    def initialize
      @store = Moderation::Store.new(storage: adapter)
    end

    def uniq_entries
      ids, entries = [], []
      self.store.all.select do |entry|
        id = entry.fetch(:id){:no_id}
        unless ids.include?(id)
          entries << entry
          ids << id
        end
      end
      entries
    end

    private

    def adapter
      # server = 'redis://localhost:6379'
      server = ENV['REDISTOGO_URL']
      Moderation::Adapters::RedisAdapter.new(collection: 'psy_moderations', server: server)
    end
  end
end
