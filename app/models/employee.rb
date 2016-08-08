class Employee < ActiveRecord::Base
  has_many :memberships
  has_many :teams, through: :memberships

  has_many :progress_reports
  has_many :owned_teams
end
