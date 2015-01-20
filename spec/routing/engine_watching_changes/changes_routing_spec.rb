require "rails_helper"

module EngineWatchingChanges
  RSpec.describe ChangesController, type: :routing do
    routes { EngineWatchingChanges::Engine.routes }

    describe "routing" do

      it "routes to #index" do
        expect(get: "/changes").to route_to("engine_watching_changes/changes#index")
      end

      it "routes to #show" do
        expect(get: "/changes/1").to route_to("engine_watching_changes/changes#show", id: "1")
      end

      it "routes to #destroy" do
        expect(delete: "/changes/1").to route_to("engine_watching_changes/changes#destroy", id: "1")
      end

    end
  end
end
