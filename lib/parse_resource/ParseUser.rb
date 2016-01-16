require 'rest-client'
require 'json'
class ParseUser
  HEADERS = {:'X-Parse-Application-Id' => 'uGqVPX8ZdhRsRzYK4pRGNvzjwi2bljbNEJtvifHc', :'X-Parse-REST-API-Key' => 'YlWreRr1vBWHwsahl8miqJmV7vq11rbMLwitI2N5',
             :'X-Parse-Revocable-Session' => '1', :content_type => 'application/json'}

  # user login API call
  def self.authenticate(username, password)
    base_uri = 'https://api.parse.com/1/login'

    resource = RestClient::Resource.new(base_uri, 'uGqVPX8ZdhRsRzYK4pRGNvzjwi2bljbNEJtvifHc', 'F7hGGcckJ6CMSElVA799PQxnR6cmNen65WskyYjv')

    begin
      server_response = resource.get(:params => {:username => username, :password => password})
      server_response_json = JSON.parse server_response

      server_response_json
    rescue
      false
    end

  end

  # user sign up API call
  def self.sign_up(username, password, email)
    base_uri = 'https://api.parse.com/1/users'

    response = RestClient.post(base_uri, {:username => username, :password => password, :email => email}.to_json, HEADERS)

    json_response = JSON.parse response
    return json_response
  end

  def self.get_courses(object_ids)
    courses = Array.new
    base_uri = 'https://api.parse.com/1/classes/course/'

    object_ids.each do |object|
      response = RestClient.get(base_uri + object.to_s, HEADERS)
      json_object = JSON.parse response
      courses << json_object
    end

    return courses
  end
end