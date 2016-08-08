class Employee < ActiveRecord::Base
  has_many :teams
  has_many :owned_teams, class_name: "Team", through: :teams
  has_many :progress_reports
end
