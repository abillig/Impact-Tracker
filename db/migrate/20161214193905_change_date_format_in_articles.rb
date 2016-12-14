class ChangeDateFormatInArticles < ActiveRecord::Migration[5.0]
  def up
    remove_column :articles, :date
    add_column :articles, :date, :date

  end

end
