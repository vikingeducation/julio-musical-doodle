class CreateEmployeeTeams < ActiveRecord::Migration
  def change
    create_table :employee_teams do |t|
      t.integer :employee_id
      t.integer :team_id

      t.timestamps null: false
    end
  end
end
