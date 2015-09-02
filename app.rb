require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require_relative './models/translate'


get '/' do
  @title = 'Pig Latin Generator'
  erb :home
end


post '/translate' do
  @title = 'Pig Latin Generator'
  @sample_text = params[:text]
  @pig_text = Latinize.pig @sample_text

 erb :home

end



