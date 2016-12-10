class AddGannettNameColumnToPublications < ActiveRecord::Migration[5.0]
  def change
    add_column :publications, :gannett_name, :string
  end
end
