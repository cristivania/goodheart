require "rails_helper"

RSpec.describe HealthProvidersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/health_providers").to route_to("health_providers#index")
    end

    it "routes to #new" do
      expect(:get => "/health_providers/new").to route_to("health_providers#new")
    end

    it "routes to #show" do
      expect(:get => "/health_providers/1").to route_to("health_providers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/health_providers/1/edit").to route_to("health_providers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/health_providers").to route_to("health_providers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/health_providers/1").to route_to("health_providers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/health_providers/1").to route_to("health_providers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/health_providers/1").to route_to("health_providers#destroy", :id => "1")
    end

  end
end
