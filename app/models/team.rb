class Team < ActiveRecord::Base
  belongs_to :owner
  has_many :members, through: :employees, class_name: "employees"
  has_many :progress_reports
end
