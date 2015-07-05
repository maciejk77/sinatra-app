require 'sinatra'
require 'sinatra/reloader' if development?

get '/hello' do
  "Hello Sinatra!"
end

get '/frank' do
  name = "Frank"
  "Hello #{name}"
end

get '/:name' do
  name = params[:name]
  "Hello there #{name}"
end

get '/:country/:region/:city' do 
  "I was born in #{params[:country]} in #{params[:region]} region, in city of #{params[:city]}"
end