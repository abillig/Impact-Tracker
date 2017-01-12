class AddProjectIdToImpactRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :impact_records, :project_id, :integer, :null => true
  end
end
