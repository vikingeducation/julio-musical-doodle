class Team < ActiveRecord::Base
  belongs_to :owner, :class_name => "Employee", :foreign_key => :employee_id
  has_many :progress_reports
  has_many :memberships
  has_many :members, through: :memberships, source: :employee
end
