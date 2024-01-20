class Manager::InvitationsController < Manager::BaseController
  before_action :load_invitation, only: [:update, :destroy]

  def index
    @invitations = Invitation.sorted
    @new_invitation = Invitation.new
  end

  def create
    Invitation.create(whitelisted_params)
    redirect_to manager_invitations_path
  end

  def update
    @invitation.update(whitelisted_params)
  end

  def destroy
    @invitation.destroy
  end

  private

  def whitelisted_params
    params.require(:invitation).permit(:name, :accepted, :overnight)
  end

  def load_invitation
    @invitation = Invitation.find(params[:id])
  end
end
