class Team < ActiveRecord::Base
  belongs_to :owner, class_name: "Employee", foreign_key: :employee_id

  has_many :members, class_name: "Employee", foreign_key: :employee_id

  has_many :progress_reports

  has_many :employee_teams
  has_many :members, through: :employee_teams, source: :employee, foreign_key: :employee_id

end
