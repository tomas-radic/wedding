class InvitationsController < ApplicationController
  before_action :load_invitation, only: [:edit, :update]

  def edit
  end

  def update
    @invitation.update(whitelisted_params)
    redirect_to root_path
  end

  private

  def load_invitation
    @invitation = Invitation.find(params[:id])
  end

  def whitelisted_params
    params.require(:invitation).permit(:accepted, :overnight, :nr_persons, :with_children, :note)
  end
end
