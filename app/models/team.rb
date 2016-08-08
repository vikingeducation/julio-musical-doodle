class Team < ActiveRecord::Base
  has_many :progress_reports
  belongs_to :owner, foreign_key: :employee_id, class_name: "Employee"
end
