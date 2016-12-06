class AddImpactDateToImpact < ActiveRecord::Migration[5.0]
  def change
    add_column :impacts, :impact_date, :date
  end
end
