class TeamProgressReport < ActiveRecord::Base
  belongs_to :team
  belongs_to :progress_report
end
