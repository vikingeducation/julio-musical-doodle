class AddForeignKeyToTeam < ActiveRecord::Migration
  def change
    add_reference :teams, :employee, index: true
  end
end
