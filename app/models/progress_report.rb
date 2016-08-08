class ProgressReport < ActiveRecord::Base
  belongs_to :user, class_name: "Employee", foreign_key: :author_id
  belongs_to :team
end
