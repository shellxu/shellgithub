class HomeController < ApplicationController
  def index
   before_filter :authenticate_user!
  end
end
