class Team < ActiveRecord::Base
  belongs_to :owner, class_name: "Employee"
  has_many :teamings
  has_many :members, source: :employees, through: :teamings
  has_many :progress_reports
end
