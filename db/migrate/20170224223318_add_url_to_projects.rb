class AddUrlToProjects < ActiveRecord::Migration[5.0]
  def change
    rename_column :projects, :description, :name
    add_column :projects, :url, :string
    add_column :projects, :description, :string
  end
end
