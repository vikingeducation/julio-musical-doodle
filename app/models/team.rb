class Team < ActiveRecord::Base
  has_many :employee_teams
  has_many :members, through: :employee_teams, source: :employee
  has_many :progress_reports
  belongs_to :owner, class_name: "Employee", foreign_key: :employee_id
end
