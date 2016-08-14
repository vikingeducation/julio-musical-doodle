class CreateOwnerTeams < ActiveRecord::Migration
  def change
    create_table :owner_teams do |t|
      t.references :employee, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
