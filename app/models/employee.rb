class Employee < ActiveRecord::Base
  has_many :owned_teams, :class_name => "Team"
  has_many :progress_reports
  has_many :team_memberships
  has_many :teams, :through => :team_memberships

end
