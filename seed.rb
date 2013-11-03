require 'faker'
require 'active_record'
require_relative './app/models/user'

ActiveRecord::Base.establish_connection(adapter: 'postgresql',
									database: 'thing_o_new_dev')

20.times do
	p User.create(:name => Faker::Name.first_name)
end
