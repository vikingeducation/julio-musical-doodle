class Employee < ActiveRecord::Base
  has_many :member_teams, class_name: "EmployeeTeam"
  has_many :teams, through: :member_teams
  has_many :progress_reports, foreign_key: :author_id
  has_many :owned_teams, class_name: "OwnerTeam", source: :team
end
