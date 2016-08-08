class Employee < ActiveRecord::Base
  has_many :member_teams, class_name: "EmployeeTeam"
  has_many :progress_reports
  has_many :owned_teams, class_name: "OwnerTeam"
end
