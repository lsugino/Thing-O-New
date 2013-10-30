require 'sinatra/activerecord/rake'
require './app'

namespace :db do
  desc "create the postgres database"
  task :create do
    `createdb thing_o_new_dev`
  end

  desc "drop the postgres database"
  task :drop do
    `dropdb thing_o_new_dev`
  end
end