class DogsUsers < ActiveRecord::Migration
  def change
  	create_join_table :users, :dogs
  end
end
