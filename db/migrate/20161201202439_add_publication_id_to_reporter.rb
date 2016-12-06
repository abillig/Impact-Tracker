class AddPublicationIdToReporter < ActiveRecord::Migration[5.0]
  def change
    add_column :reporters, :publication_id, :integer
  end
end
