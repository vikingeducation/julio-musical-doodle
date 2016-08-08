class Employee < ActiveRecord::Base

  has_many :teams
  has_many :progress_reports
  has_many :owned_teams, through: :teamed_employees, source: :teams
end
