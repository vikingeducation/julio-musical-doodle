class CreateProgressReports < ActiveRecord::Migration
  def change
    create_table :progress_reports do |t|
      t.text :body

      t.timestamps null: false
      t.references :employee, foreign_key: true

    end
  end
end
