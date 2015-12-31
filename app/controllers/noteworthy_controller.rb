class NoteworthyController < ApplicationController
  require 'parse_resource/ParseUser'

  skip_before_filter  :verify_authenticity_token

  def index
    render :layout => false
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

    if user
      courses = Array.new
      locals = {:username => username, :courses => courses}
      render 'noteworthy/test', :locals => locals
    end
  end

  def sign_in
    username = params['username']
    password = params['password']
    user = ParseUser.authenticate username, password
    courses = user['courses']

    if user
      locals = {:username => username, :courses => courses}
      render 'noteworthy/test', :locals => locals
      # render json: courses
    else
      render 'noteworthy/sign_in_test'
    end
  end
end
