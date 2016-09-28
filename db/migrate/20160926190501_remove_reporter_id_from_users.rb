class RemoveReporterIdFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :reporter_id, :integer
  end
end
