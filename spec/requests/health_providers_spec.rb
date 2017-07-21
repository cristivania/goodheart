require 'rails_helper'

RSpec.describe "HealthProviders", type: :request do
  describe "GET /health_providers" do
    it "works! (now write some real specs)" do
      get health_providers_path
      expect(response).to have_http_status(200)
    end
  end
end
