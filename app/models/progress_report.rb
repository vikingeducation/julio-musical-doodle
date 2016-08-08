class ProgressReport < ActiveRecord::Base
  belongs_to :author, class_name: "Employee"
  belongs_to :team
end
