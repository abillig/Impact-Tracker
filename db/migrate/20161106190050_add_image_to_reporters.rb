class AddImageToReporters < ActiveRecord::Migration[5.0]
  def change
    add_column :reporters, :image, :string
  end
end
