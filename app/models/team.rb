class Team < ActiveRecord::Base
  belongs_to :owner, class_name: "Employee", foreign_key: :employee_id
  has_many :members, class_name: "Employee", foreign_key: :employee_id
  has_many :progress_reports
  has_many :employees, through: :progress_reports, source: :employee
end
