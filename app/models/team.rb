class Team < ActiveRecord::Base
  belongs_to :owner, :class_name => "Employee"
  has_many :team_memberships
  has_many :members, :through => :team_memberships, :source => :employee
  has_many :progress_reports
end
