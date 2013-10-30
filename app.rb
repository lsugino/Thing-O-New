require 'sinatra'
require 'active_record'
require_relative './app/models/user'

ActiveRecord::Base.establish_connection(adapter: 'postgresql',
									database: 'thing_o_new_dev')

get '/' do
	@all_users = User.all # :order => :id 
  erb :homepage
end

post '/' do  
  User.create(:name => params[:name])
  redirect '/'
end 

