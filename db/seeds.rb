# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Employee.destroy_all
EmployeeTeam.destroy_all
ProgressReport.destroy_all
Team.destroy_all

MULTIPLIER = 10

MULTIPLIER.times do
  e = Employee.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
  5.times do
    owner_id = Employee.all.sample.id
    t = e.teams.create(name: Faker::Team.name, owner_id: owner_id)
    2.times do
      t.progress_reports.create(body: Faker::Lorem.sentence, author_id: owner_id)
    end
  end
end
