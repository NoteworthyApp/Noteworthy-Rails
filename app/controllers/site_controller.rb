class SiteController < ApplicationController
  require 'parse_resource/ParseUser'

  def index
  end

  def login
  end

  def user_login
    user_name = params[:username]
    password = params[:password]
    ParseUser.authenticate user_name, password
    locals = {:username => user_name}
    render 'site/test', :locals => locals
  end

  def sign_up
    username = params[:username]
    password = params[:password]
    email = params[:email]
    response = ParseUser.sign_up username, password, email

    render json: response
  end
end
