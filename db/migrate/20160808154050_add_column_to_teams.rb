class AddColumnToTeams < ActiveRecord::Migration
  def change
    add_reference :teams, :employee, index: true, foreign_key: true
  end
end
