class CreateProgressReports < ActiveRecord::Migration
  def change
    create_table :progress_reports do |t|
      t.text :body
      t.integer :team_id, foreign_key: true
      t.index :team_id, unique: true
      t.integer :employee_id, foreign_key: true
      t.index :employee_id, unique: true
      t.timestamps null: false
    end
  end
  
end
