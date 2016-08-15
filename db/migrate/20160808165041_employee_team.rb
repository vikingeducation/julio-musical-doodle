class EmployeeTeam < ActiveRecord::Migration
  def change
    add_reference :employee_teams, :user, index: true
    add_reference :employee_teams, :team, index: true
    add_reference :progress_report, :user, index: true
    add_reference :progress_report, :team, index: true
  end
end
