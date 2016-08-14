class Team < ActiveRecord::Base
  belongs_to :owner, class_name: 'Employee'
  has_many :member_teams, class_name: 'EmployeeTeam'
  has_many :members, through: :member_teams, source: :employee
  has_many :progress_reports
end
