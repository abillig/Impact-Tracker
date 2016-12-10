class RenameTitleToPosition < ActiveRecord::Migration[5.0]
  def change
   rename_table :titles, :positions
  end
end
