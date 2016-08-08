class CreateProgressReports < ActiveRecord::Migration
  def change
    create_table :progress_reports do |t|
      t.text :body
      t.references :employee
      t.references :team
      t.timestamps null: false
    end
  end
end
