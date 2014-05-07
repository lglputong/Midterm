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

post '/save' do
	last_expense = expenses.last
	expense = Expense.new(last_expense.id += 1, :some_item, :some_amount)
	expenses << expense
	erb :index
end