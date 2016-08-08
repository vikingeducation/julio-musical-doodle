class AddColumnToProgressReports < ActiveRecord::Migration
  def change
    add_reference :progress_reports, :employee, index: true, foreign_key: true
    add_reference :progress_reports, :team, index: true, foreign_key: true
  end
end
