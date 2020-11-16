class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  
  layout 'page'
  
  def page; end
end
