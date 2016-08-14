class Team < ActiveRecord::Base
  belongs_to :owner, class_name: "Employee"

  has_many :memberships
  has_many :members, through: :memberships, source: :employee

  has_many :progress_reports
end
