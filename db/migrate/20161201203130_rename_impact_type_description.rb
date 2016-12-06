class RenameImpactTypeDescription < ActiveRecord::Migration[5.0]
  def change
    change_table :impact_types do |t|
      t.rename :name, :description
      t.rename :short_name, :name
    end
  end
end
