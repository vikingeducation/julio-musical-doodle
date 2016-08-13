# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
  Employee.create(:first_name => Faker::Name.first_name,
                  :last_name => Faker::Name.last_name,
                  :email => Faker::Internet.email)
end

20.times do
  Team.create(:name => Faker::Lorem.word,
              :employee_id => Employee.all.sample.id)
end

40.times do 
  ProgressReport.create(:body => Faker::Lorem.sentence,
                        :team_id => Team.all.sample.id,
                        :employee_id => Employee.all.sample.id)
end


Employee.all.each do |e|
  2.times do
    Membership.create(:employee_id => e.id,
                      :team_id => Team.all.sample.id
      )
  end
end