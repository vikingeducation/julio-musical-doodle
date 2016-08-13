class Membership < ActiveRecord::Base
  belongs_to :team
  belongs_to :employee
  
end
