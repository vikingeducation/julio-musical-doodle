class CreateProgressReports < ActiveRecord::Migration
  def change
    create_table :progress_reports do |t|
      t.text :body
      t.references :team
      t.references :employee
      t.timestamps null: false
    end
  end
end
