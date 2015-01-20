require 'rails_helper'

module EngineWatchingChanges
  RSpec.describe ChangesController, type: :controller do
    routes { EngineWatchingChanges::Engine.routes }

    describe "GET index" do
      it "assigns all changes as @changes" do
        expect(Repository.instance).to receive(:uniq_entries)
        get :index
        # expect(assigns(:changes)).to be_present
      end
    end

    describe "GET show" do
      it "assigns the requested change as @change" do
        store = double(:store)
        expect(store).to receive(:search).with(:id, 42)
        expect(Repository.instance).to receive(:store) { store }
        get :show, { id: 42 }
        # expect(assigns(:change)).to be_present
      end
    end

    describe "DELETE destroy" do
      it "destroys the requested change" do
        store = double(:store)
        expect(store).to receive(:delete_query).with(:id, 42)
        expect(Repository.instance).to receive(:store) { store }
        delete :destroy, { id: 42 }
      end
    end

  end
end
