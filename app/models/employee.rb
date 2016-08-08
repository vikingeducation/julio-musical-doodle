class Employee < ActiveRecord::Base
  has_many :teamings
  has_many :teams, through: :teamings
  has_many :progress_reports, foreign_key: :author_id
  has_many :owned_teams, class_name: "Team"
end
