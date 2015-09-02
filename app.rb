require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

get '/' do
  @title = Home
  erb :translate
end
