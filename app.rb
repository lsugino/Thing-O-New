require 'sinatra'
require 'active_record'
require_relative './app/models/user'

ActiveRecord::Base.establish_connection(adapter: 'postgresql',
									database: 'thing_o_new_dev')


get '/' do
  redirect '/users'
end

# index
get '/users' do
  @users = User.all
  erb :index

end

# show sign up page
get '/users/new' do
  erb :new
end

# save user to DB, and go to their hp
post '/users/new' do
  user = User.create(name: params[:name])
  redirect "users/#{user.id}"
end

# show -> Welcome user
get '/users/:id' do
  @user = User.find(params[:id])
  erb :show
end

# edit -> Edit user
get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :userpage
end

# update -> 
put '/users/:id' do
  user = User.find(params[:id])
  user.update(name: params[:name])
  redirect "/users/#{user.id}"
end

# delete
delete '/users/:id' do
  user = User.find(params[:id])
  user.destroy
  redirect "/users/new"
end







