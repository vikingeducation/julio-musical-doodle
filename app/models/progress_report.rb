class ProgressReport < ActiveRecord::Base
  belongs_to :authors
  belongs_to :team
end
