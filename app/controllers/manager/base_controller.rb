class Manager::BaseController < ApplicationController
  layout 'manager'

  before_action :authenticate_user!
  before_action :verify_manager!

  private

  def verify_manager!
    head :unauthorized unless current_user.is_manager?
  end
end
