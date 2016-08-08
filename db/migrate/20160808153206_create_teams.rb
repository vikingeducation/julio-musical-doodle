class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      
      t.timestamps null: false
      t.references :progress_reports, index: true, foreign_key: true
      t.references :employees, index: true, foreign_key: true

    end
  end
end
