class Team < ActiveRecord::Base
  belongs_to :owner, class_name: "Employee", foreign_key: :employee_id

  has_many :employee_teams
  has_many :members, through: :employee_teams, source: :employee

  has_many :team_progress_reports
  has_many :progress_reports, through: :team_progress_reports

end

# teams should have many members
# right now, "teams" is really a "team memberships" table where each row represents an employee belonging to a team
# what we want is a table where team names are unique and where a seperate join table lists employee ids and team ids
# through that join table, we will be able to say a team has_many team_employees

# work backwards: 
# we want a table whose rows are unique to team names 
# and a join table lists team ids and progress report ids
# so, we create a join table that joins employees and progress reports
# then we use the employee teams to get all employees on a team
# then we use employee progress reports to get all progress reports for those employees