
ENV['APP_ENV'] = 'test'

require_relative  '../grandmas_server'  # <-- your sinatra app
require 'rspec'
require 'rack/test'

RSpec.describe "Grandma's server" do
    include Rack::Test::Methods
  
    def app
      Sinatra::Application
    end
    context "Root" do
        it "should give a greeting if no parameter is given" do
            get '/'
            expect(last_response).to be_ok
            expect(last_response.body).to include "Hi, welcome to Grandma's server!"
        end

        it "should greet by name if a name parameter is given" do
            get '/Lucy'
            # puts last_response.inspect
            expect(last_response).to be_ok
            expect(last_response.body).to include "Hi, Lucy, welcome to Grandma's server!"
        end
    end
    context "Dogs" do
        it "should have a second page called dogs" do
            get '/dogs'
            expect(last_response).to be_ok
        end
        it "should have a heading that says 'Grandma likes dogs!'" do
            get '/dogs'
            expect(last_response.body).to include "<h1>Grandma likes dogs!</h1>"
        end
        it "should have at least one image" do
            get '/dogs'
            expect(last_response.body).to include "<img"
        end
        it "should be linked to a style sheet" do
            get '/dogs'
            expect(last_response.body).to include "styles.css"
        end
    end
end