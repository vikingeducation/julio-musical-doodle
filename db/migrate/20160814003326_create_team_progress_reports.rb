class CreateTeamProgressReports < ActiveRecord::Migration
  def change
    create_table :team_progress_reports do |t|
      t.integer :progress_report_id
      t.integer :team_id

      t.timestamps null: false
    end
    add_index :team_progress_reports, [:progress_report_id, :team_id], unique: true
  end
end
