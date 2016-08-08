class Employee < ActiveRecord::Base
  has_many :owned_teams, :class_name => "Team"
  has_many :progress_reports, :foreign_key => :employee_id
  has_many :team_memberships
  has_many :teams, :through => :team_memberships

end
