class AddArticleIdToImpactRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :impact_records, :article_id, :integer
  end
end
