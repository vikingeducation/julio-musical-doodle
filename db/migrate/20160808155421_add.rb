class Add < ActiveRecord::Migration
  def change
    rename_column :progress_reports, :employee_id, :author_id
  end
end
