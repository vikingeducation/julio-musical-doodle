class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :employee_id, foreign_key: true
      t.index :employee_id, unique: true
      t.timestamps null: false
    end
  end

end
