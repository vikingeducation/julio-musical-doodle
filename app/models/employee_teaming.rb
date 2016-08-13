class EmployeeTeaming < ActiveRecord::Base
  has_many :members, through: :employee_id, class_name: "Employee"
  belongs_to :team
  belongs_to :employee
end
