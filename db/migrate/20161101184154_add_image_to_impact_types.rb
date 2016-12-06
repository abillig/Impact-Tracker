class AddImageToImpactTypes < ActiveRecord::Migration[5.0]
  def change
    add_column :impact_types, :image, :string
  end
end
