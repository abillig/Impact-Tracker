class AddProjectIdToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :project_id, :integer
  end
end
