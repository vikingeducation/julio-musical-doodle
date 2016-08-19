class Team < ActiveRecord::Base
  has_many :team_employees, class_name: "EmployeeTeam"
  has_many :members, through: :team_employees, source: :employee, foreign_key: :employee_id
  belongs_to :owner, class_name: "Employee", foreign_key: :owner_id
  has_many :progress_reports
end
