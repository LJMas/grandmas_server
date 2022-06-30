require 'sinatra'
require "sinatra/reloader" if development?

get '/dogs' do
    erb :dogs
end

post '/dogs' do
    redirect '/' + params[:name] if params[:name]
    redirect '/'
end

get '/:name?' do | name |
    name = name + ", " if name
    erb :index, :locals => {:name=>name} 
end
