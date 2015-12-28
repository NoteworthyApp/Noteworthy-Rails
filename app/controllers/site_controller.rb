class SiteController < ApplicationController
  require 'parse_resource/ParseUser'

  skip_before_filter  :verify_authenticity_token

  def index
  end

  def login
  end

  def sign_in_test
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
end
