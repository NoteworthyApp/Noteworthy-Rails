class SiteController < ApplicationController
  require 'parse_resource/ParseUser'

  skip_before_filter  :verify_authenticity_token

  def index
  end

  def login
  end

  def sign_in_test
  end

  def create_account
  end

  def create
    username = params['username']
    password = params['password']
    email = params['email']

    user = ParseUser.sign_up username, password, email
    locals = {:username => username}
    render 'site/test', :locals => locals
  end

  def sign_in
    username = params['username']
    password = params['password']
    user = ParseUser.authenticate username, password
    courses = user['courses']

    if user
      locals = {:username => username, :courses => courses}
      render 'site/test', :locals => locals
      # render json: courses
    else
      render 'site/sign_in_test'
    end
  end
end
