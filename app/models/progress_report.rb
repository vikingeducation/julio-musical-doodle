class ProgressReport < ActiveRecord::Base
  belongs_to :author
  belongs_to :team
end
