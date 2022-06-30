
ENV['APP_ENV'] = 'test'

require_relative  '../grandmas_server'  # <-- your sinatra app
require 'rspec'
require 'rack/test'

RSpec.describe "Grandma's server" do
    include Rack::Test::Methods
  
    def app
      Sinatra::Application
    end

end