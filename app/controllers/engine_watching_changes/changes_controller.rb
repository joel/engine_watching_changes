require_dependency "engine_watching_changes/application_controller"

module EngineWatchingChanges
  class ChangesController < ApplicationController

    # GET /changes
    def index
      # binding.pry
      @changes = repository.uniq_entries
    end

    # GET /changes/1
    def show
      # binding.pry
      @id = params['id'].to_i
      @change = repository.store.search(:id, @id)
    end

    # DELETE /changes/1
    def destroy
      @id = params['id'].to_i
      num = repository.store.delete_query(:id, @id)
      redirect_to changes_url, notice: "#{num}x was successfully destroyed."
    end

    private

    def repository
      @repository ||= Repository.instance
    end

  end
end
