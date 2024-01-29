class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  protected

  def after_sign_in_path_for(resource)
    # stored_location_for(resource) || manager_invitations_path
    manager_invitations_path
  end

  private

  def not_found
    render file: Rails.public_path.join('404.html'), layout: false, status: :not_found
  end
end
