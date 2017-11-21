class HomeController < ApplicationController
before_action :authenticate_user!

  def index
    :start_date
  end

end
