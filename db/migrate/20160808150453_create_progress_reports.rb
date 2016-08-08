class CreateProgressReports < ActiveRecord::Migration
  def change
    create_table :progress_reports do |t|
      t.text :body
      t.references :author
      t.references :team

      t.timestamps null: false
    end
  end
end
