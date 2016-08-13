class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :employee_id
      t.integer :team_id
      
      t.timestamps null: false
    end
  end
end
