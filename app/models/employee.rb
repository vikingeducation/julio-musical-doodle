class Employee < ActiveRecord::Base
  has_many :teams, through: :employee_teamings, class_name: "Team"
  has_many :progress_reports
  has_many :employee_teamings
  has_many :owned_teams
end
