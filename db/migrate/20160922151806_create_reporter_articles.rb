class CreateReporterArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :reporter_articles do |t|
      t.integer :reporter_id
      t.integer :article_id

      t.timestamps
    end
  end
end
