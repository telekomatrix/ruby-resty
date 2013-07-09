require 'sinatra'
require 'json'

use Rack::Auth::Basic do |username, password|
  username == 'nyan' && password == 'cat'
end

get '/api/nyan' do
  JSON.dump({ nyan: "cat" })
end

delete '/api/nyan' do
end

head '/api/nyan' do
end

options '/api/nyan' do
end

put '/api/nyan' do
  [204]
end

post '/api/nyan' do
  JSON.dump(params)
end

patch '/api/nyan' do
end