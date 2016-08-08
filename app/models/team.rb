class Team < ActiveRecord::Base
  belongs_to :owner, foreign_key: :employee_id
end
