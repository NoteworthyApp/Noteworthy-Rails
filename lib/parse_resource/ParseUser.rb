require 'rest-client'
require 'json'
class ParseUser
  $keys = {:app_id => 'uGqVPX8ZdhRsRzYK4pRGNvzjwi2bljbNEJtvifHc', :api_key => 'YlWreRr1vBWHwsahl8miqJmV7vq11rbMLwitI2N5'}

  def self.authenticate(username, password)
    base_uri = 'https://api.parse.com/1/login'

    resource = RestClient::Resource.new(base_uri, $keys['app_id'], $keys['api_key'])

    response = resource.get(:params => {:username => username, :password => password})
    user = JSON.parse response

    return user
  end

  def self.sign_up(username, password, email)
    base_uri = 'https://api.parse.com/1/users'

    response = RestClient.post(base_uri, {:username => username, :password => password, :email => email}.to_json,
                               {:'X-Parse-Application-Id' => 'uGqVPX8ZdhRsRzYK4pRGNvzjwi2bljbNEJtvifHc', :'X-Parse-REST-API-Key' => 'YlWreRr1vBWHwsahl8miqJmV7vq11rbMLwitI2N5',
                                :'X-Parse-Revocable-Session' => '1', :content_type => 'application/json'}
    )

    json_response = JSON.parse response
  end
end