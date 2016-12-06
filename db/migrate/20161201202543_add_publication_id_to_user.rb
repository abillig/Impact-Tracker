class AddPublicationIdToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :publication_id, :integer
  end
end
