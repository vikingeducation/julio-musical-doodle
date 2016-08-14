class CreateTeamMemberships < ActiveRecord::Migration
  def change
    create_table :team_memberships do |t|
      t.integer :employee_id, foreign_key: true
      t.integer :team_id, foreign_key: true
      t.index [:employee_id, :team_id]
      t.timestamps null: false
    end
  end

end
