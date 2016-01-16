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
    object_ids = Array.new
    username = params['username']
    password = params['password']
    user = ParseUser.authenticate username, password
    course_objects = user['courses']

    course_objects.each do |obj|
      object_ids << obj['objectId']
    end

    courses = ParseUser.get_courses object_ids
    puts courses

    if user
      locals = {:username => username, :courses => courses}
      render 'noteworthy/test', :locals => locals
      # render json: courses
    else
      render 'noteworthy/index'
    end
  end
end
