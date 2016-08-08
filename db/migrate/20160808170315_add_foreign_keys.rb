class AddForeignKeys < ActiveRecord::Migration
  def change
    add_reference :employee_teams, :employee, index: true
    add_reference :employee_teams, :team, index: true
    add_reference :progress_reports, :employee, index: true
    add_reference :progress_reports, :team, index: true
  end
end
