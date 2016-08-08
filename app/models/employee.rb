class Employee < ActiveRecord::Base
  has_many :teams
end
