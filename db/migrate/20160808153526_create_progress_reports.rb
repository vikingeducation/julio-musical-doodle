class CreateProgressReports < ActiveRecord::Migration
  def change
    create_table :progress_reports do |t|
      t.text :body
      t.integer :team_id
      t.integer :employee_id
      
      t.timestamps null: false
    end
  end
end
