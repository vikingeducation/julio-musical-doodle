class Employee < ActiveRecord::Base
  has_many :progress_reports
  has_many :teams
  has_many :memberships
  has_many :owned_teams, through: :memberships, source: :team
end
