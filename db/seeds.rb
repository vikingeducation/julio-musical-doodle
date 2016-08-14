# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do
  e = Employee.create(first_name:Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

5.times do
  e = Team.create(owner_id: Employee.all.sample.id, name: Faker::GameOfThrones.house)
end

10.times do
  e = ProgressReport.create(author_id: Employee.all.sample.id, team_id: Team.all.sample.id)
end

30.times do
  e = Membership.create(employee_id: Employee.all.sample.id, team_id: Team.all.sample.id)
end
