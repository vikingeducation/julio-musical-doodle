class CreateEmployeeTeams < ActiveRecord::Migration
  def change
    create_table :employee_teams do |t|

      t.timestamps null: false
    end
  end
end
