class Employee < ActiveRecord::Base
  has_many :employee_teams
  has_many :teams, through: :employee_teams
  has_many :progress_reports, foreign_key: :author_id
  has_many :owned_teams, class_name: "Team", foreign_key: :owner_id
end
