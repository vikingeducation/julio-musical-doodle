class Team < ActiveRecord::Base
  belongs_to :owner
  has_many :members, class_name: "member", source: :employees
  has_many :progress_reports
end
