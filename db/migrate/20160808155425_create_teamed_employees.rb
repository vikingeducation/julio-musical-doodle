class CreateTeamedEmployees < ActiveRecord::Migration
  def change
    create_table :teamed_employees do |t|
      t.references :teams, foreign_key: true
      t.references :employees, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
