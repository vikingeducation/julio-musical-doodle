class DestroyEmployeeTeams < ActiveRecord::Migration
  def change
    drop_table :employee_teams
  end
end
