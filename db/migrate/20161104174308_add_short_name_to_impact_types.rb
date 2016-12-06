class AddShortNameToImpactTypes < ActiveRecord::Migration[5.0]
  def change
    add_column :impact_types, :short_name, :string
  end
end
