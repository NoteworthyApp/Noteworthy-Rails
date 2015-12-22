class SiteController < ApplicationController
  def index
  end

  def login
  end

  def test
    @user_name = params[:user]
  end
end
