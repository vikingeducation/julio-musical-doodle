class AddForeignKeys < ActiveRecord::Migration
  def change
    add_reference :progress_reports, :user, index: true
    add_reference :progress_reports, :employee, index: true
    add_reference :teams, :employee, index:true
    add_reference :progress_reports, :team, index: true
    add_reference :employees, :employee, index: true
  end
end
