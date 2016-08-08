class CreateProgresses < ActiveRecord::Migration
  def change
    create_table :progresses do |t|
      t.string :report

      t.timestamps null: false
    end
  end
end
