class Team < ActiveRecord::Base
  belongs_to :owner, class_name: "Employee", foreign_key: :employee_id
  has_many :teamings
  has_many :members, source: :employee, through: :teamings, foreign_key: :employee_id
  has_many :progress_reports
end
