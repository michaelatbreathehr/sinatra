require 'sinatra'

get '/' do
  'hello world!'
end

get '/secret' do
  'Dont tell anyone you are here'
end

get '/random-cat' do
  @name = ["Bob", "Dave", "Stuart"].sample
  erb(:index)
end

get '/get-cat' do
  erb :cat_form
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end
