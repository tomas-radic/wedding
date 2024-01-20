class HomeController < ApplicationController
  def index
    @invitations = Invitation.sorted

    # Free CSS template
    # https://www.free-css.com/free-css-templates/page279/jack-and-rose
  end
end
