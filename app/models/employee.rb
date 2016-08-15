class Employee < ActiveRecord::Base

  has_many :owned_teams, class_name: "Team"
  has_many :progress_reports, foreign_key: :author_id
  
  has_many :teams

end