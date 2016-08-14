# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.destroy_all
Employee.destroy_all
ProgressReport.destroy_all
EmployeeTeam.destroy_all
OwnerTeam.destroy_all

def create_employee(team)
  employee = Employee.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email
  )
  EmployeeTeam.create(employee: employee, team: team)
  employee
end

10.times do
  owner = Employee.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email
  )
  team = Team.create(
    name: Faker::Team.name
  )
  OwnerTeam.create(employee: owner, team: team)
  ProgressReport.create(
    body: Faker::Lorem.sentence,
    author: create_employee(team),
    team: team
  )
end
