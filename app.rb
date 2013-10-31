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
  User.create!(:name => params[:name])
  redirect '/'
end 

# restful stuff for dog
# INDEX READ
# index.html.erb
get "/dogs" do
end

# READ
# contains form to create dog
# new.html.erb
get "/dog/new" do
end

# CREATE
post "/dog" do
end

# READ
# show.html.erb
get "/dog" do
end

# EDIT
# edit.html.erb
# contains form to update a existing entry
get "/dog/edit/:id" do
  @dog = Dog.find(params[:id])
end

# UPDATE
put "/dog" do

end

# DELETE
delete "/dog" do
  Dog.destroy(params[:id])
end
