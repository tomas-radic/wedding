require 'rails_helper'

RSpec.describe "Manager::Invitations", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/manager/invitations/index"
      expect(response).to have_http_status(:success)
    end
  end

end
