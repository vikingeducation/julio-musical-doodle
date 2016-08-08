# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
  employee = Employee.create(first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  email: Faker::Internet.email)


end

5.times do
  Team.create(name: Faker::Team.name)
end


team_ids = Team.pluck(:id)
Employee.all.each do |emp|
  emp.team_id = team_ids.sample
end

