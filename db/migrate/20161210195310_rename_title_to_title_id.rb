class RenameTitleToTitleId < ActiveRecord::Migration[5.0]
  def change

  remove_column :users, :title
   add_column :users, :title_id, :integer

  end
end
