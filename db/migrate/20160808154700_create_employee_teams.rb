class CreateEmployeeTeams < ActiveRecord::Migration
  def change
    create_table :employee_teams do |t|
      t.references :employee, index: true
      t.references :team, index: true
      t.timestamps null: false
    end
  end
end
