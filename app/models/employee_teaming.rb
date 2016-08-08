class EmployeeTeaming < ActiveRecord::Base
  has_many :members, foreign_key: :employee_id, class_name: "Employee"
end
