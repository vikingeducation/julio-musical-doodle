class Team < ActiveRecord::Base
  belongs_to :employee
  has_many :progress_reports
  has_many :memberships
  has_many :members, through: :memberships, source: :employee
end
