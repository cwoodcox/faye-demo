require 'sinatra'
require 'coffee-script'

get '/' do
  erb :index
end

get '/demo.js' do
  coffee :demo
end