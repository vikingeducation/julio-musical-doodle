class CreateTeamings < ActiveRecord::Migration
  def change
    create_table :teamings do |t|
      t.references :employee, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
