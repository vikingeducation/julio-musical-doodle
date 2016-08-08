class Team < ActiveRecord::Base
  belongs_to :owner, class_name: 'Employee', foreign_key: 'employee_id'

  has_many :team_members
  has_many :members, through: :team_members,
                     source: :employee

  has_many :progress_reports
end
