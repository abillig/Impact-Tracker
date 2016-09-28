class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :headline
      t.string :url
      t.string :date
      t.string :info

      t.timestamps
    end
  end
end
