class Employee < ActiveRecord::Base
  has_many :memberships
  has_many :teams, through: :memberships

  has_many :progress_reports, foreign_key: :author_id
  has_many :owned_teams, class_name: "Team", foreign_key: :owner_id
end
