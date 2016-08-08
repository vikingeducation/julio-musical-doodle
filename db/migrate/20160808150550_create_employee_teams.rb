class CreateEmployeeTeams < ActiveRecord::Migration
  def change
    create_table :employee_teams do |t|
      t.references :employee
      t.references :team
      
      t.timestamps null: false
    end
  end
end
