class CreateUsers < ActiveRecord::Migration
  def change
    create table :users do |t|
      t.string :name
    end
  end
end
