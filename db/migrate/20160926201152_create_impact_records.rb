class CreateImpactRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :impact_records do |t|
      t.integer :impact_id
      t.integer :impact_type_id

      t.timestamps
    end
  end
end
