class AddEmployeeToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :employee_id, :integer
  end
end
