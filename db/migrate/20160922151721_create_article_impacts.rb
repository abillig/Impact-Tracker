class CreateArticleImpacts < ActiveRecord::Migration[5.0]
  def change
    create_table :article_impacts do |t|
      t.integer :impact_id
      t.integer :article_id
      t.string :description

      t.timestamps
    end
  end
end
