class EngineWatchingChanges::ApplicationController < ApplicationController
  before_action restrict_to_admin! if respond_to?(:restrict_to_admin!)
  def home_for(user)
    '/'
  end
end
