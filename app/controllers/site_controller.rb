class SiteController < ApplicationController
  require 'parse_resource/ParseUser'

  skip_before_filter  :verify_authenticity_token

  def index
  end

  def login
  end

  def sign_in
    username = params['username']
    password = params['password']
    user = ParseUser.authenticate username, password

    if user
      locals = {:username => username}
      render 'site/test', :locals => locals
    else
      render 'site/sign_in_test'
    end
  end

  def user_login
    user_name = params[:username]
    password = params[:password]
    user = ParseUser.authenticate user_name, password

    if user
      flash.now[:success] = 'Login successful!'
      locals = {:username => user_name}
      render 'site/test', :locals => locals
    else
      flash.now[:danger] = 'Invalid username or password.'
      render 'login'
    end

    # if user['username']
    #   locals = {:username => user_name}
    #   render 'site/test', :locals => locals
    #   # render :json => user
    # else
    #   # flash.now[:danger] = 'Invalid username or password.'
    #   render 'login'
    # end

  end

  def sign_in_test
  end
end
