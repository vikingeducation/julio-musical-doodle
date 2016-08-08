class Team < ActiveRecord::Base

  has_many :progress_reports
  has_many :employee_teams
  has_many :members, :through => :employee_teams, source: :employee
  belongs_to :owner, foreign_key: :employee_id, class_name: "Employee"

end
