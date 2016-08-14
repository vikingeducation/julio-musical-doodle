class CreateEmployeeTeams < ActiveRecord::Migration
  def change
    create_table :employee_teams do |t|
      t.integer :team_id
      t.integer :employee_id

      t.timestamps null: false
    end
    add_index :employee_teams, [:team_id, :employee_id], :unique => true
  end
end
