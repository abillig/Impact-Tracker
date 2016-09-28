class CreateImpactTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :impact_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
