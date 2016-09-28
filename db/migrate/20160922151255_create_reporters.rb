class CreateReporters < ActiveRecord::Migration[5.0]
  def change
    create_table :reporters do |t|
      t.string :name
      t.string :bio

      t.timestamps
    end
  end
end
