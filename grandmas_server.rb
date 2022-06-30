require 'sinatra'
require "sinatra/reloader" if development?

get '/:name?' do | name |
    name = "Grandma" if !name
    "Hello #{name}!"
  end