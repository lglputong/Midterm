require 'sinatra'
require './expense'

expenses = []

get '/' do
	erb :index
end

get '/new' do
	erb :new
end

get '/save' do
	redirect to '/'
end

get '/show/:id' do
	erb :show
end