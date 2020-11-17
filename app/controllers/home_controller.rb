class HomeController < ApplicationController
  # Home page is viewable without having to log in.  
  skip_before_action :authenticate_user!

  # Oerrides layout set in the application controller
  layout 'page'

  def page; end
end
