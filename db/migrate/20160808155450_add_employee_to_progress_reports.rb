class AddEmployeeToProgressReports < ActiveRecord::Migration
  def change
    add_column :progress_reports, :employee_id, :integer
  end
end
