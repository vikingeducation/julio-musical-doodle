class AddTeamReferenceToEmployee < ActiveRecord::Migration
  def change
    add_column :progress_reports, :employee_id, :integer
    add_column :progress_reports, :team_id, :integer
    add_column :teams, :employee_id, :integer

  end
end
