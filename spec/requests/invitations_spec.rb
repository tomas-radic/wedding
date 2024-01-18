require 'rails_helper'

RSpec.describe "Invitations", type: :request do
  describe "GET /invitations/:id/edit" do
    subject { get edit_invitation_path(invitation) }

    let!(:invitation) { create(:invitation) }

    it "Returns http success" do
      subject

      expect(response).to have_http_status(:success)
    end
  end

  describe "PATCH /invitations/:id" do
    subject { patch invitation_path(invitation, params: { invitation: { accepted: true, overnight: true } }) }

    let!(:invitation) { create(:invitation) }

    it 'Redirects to root page' do
      subject

      expect(response).to redirect_to(root_path)
    end
  end
end
