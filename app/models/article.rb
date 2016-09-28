class Article < ApplicationRecord
  has_many :reporter_articles
  has_many :reporters, through: :reporter_articles
  has_many :article_impacts
  has_many :impact_records
  has_many :impact_types, through: :impact_records
  has_many :impacts, through: :impact_records


  def reporter_name
    self.reporters.map{|reporter| reporter.name}.first
  end

  def reporter_id
    self.reporters.map{|reporter| reporter.id}.first
  end

  def self.search(term)
    Article.where("headline like ?", "%#{term}%")
  end

end
