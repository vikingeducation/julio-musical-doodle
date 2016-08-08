class OwnerTeam < ActiveRecord::Base
  belongs_to :employees
  belongs_to :teams
end
