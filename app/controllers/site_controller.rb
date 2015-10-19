class SiteController < ApplicationController
  def index
  end

  def login
  end

  def test
    @user_name = params[:name]
  end
end
