class Team < ActiveRecord::Base
  has_many :members
  has_many :progress_reports

  belongs_to :owner, :class_name => "Employee", foreign_key: :employee_id

end
