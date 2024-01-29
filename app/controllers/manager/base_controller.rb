class Manager::BaseController < ApplicationController
  layout 'manager'

  before_action :authenticate_user!
  before_action :verify_manager!

  private

  def verify_manager!
    redirect_to root_path unless current_user.is_manager?
  end
end
