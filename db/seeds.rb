# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

(1...100).each do |i|
	person = User.create(:email => 'dummy'+i.to_s+'@gmail.com', :password => 'admin', :username => 'dummy'+i.to_s)
	person.build_user_info
	person.user_info.points = rand(100)
	person.user_info.save	
end