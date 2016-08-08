# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "building employees"
3.times do |i|
  Employee.create(first_name: "name#{i}", last_name: "name#{i}", email: "email#{i}")
end

puts "building teams"
3.times do |i|
  Employee.find(i+1).teams.build(name: "name#{i}")
end

3.times do |i|
  Employee.find(i+1).teams.build(name: "name#{i}")
end

puts "building progress reports"
3.times do |i|
  ProgressReport.create(body: "name#{i}", employee_id: i, team_id: i)
end