# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

admin_role = Role.create  :name => 'admin'
user_role  = Role.create  :name => 'user'

admin = User.create  :email => 'admin@a.com', :password => 'testme', :password_confirmation => 'testme'
admin.roles << admin_role
user = User.create  :email => 'user@a.com', :password => 'testme', :password_confirmation => 'testme'
user.roles << user_role

