class AddAForeignKeyToTeam < ActiveRecord::Migration
  def change
    add_reference :teams, :team, index: true
  end
end
