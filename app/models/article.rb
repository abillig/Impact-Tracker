class Article < ApplicationRecord
  has_many :reporter_articles
  has_many :reporters, through: :reporter_articles
  has_many :article_impacts
  has_many :impact_records
  has_many :impact_types, through: :impact_records
  has_many :impacts, through: :impact_records
  belongs_to :project

  def reporter
    self.reporters.first
  end

  def reporter_name
    self.reporters.map{|reporter| reporter.name}.first
  end

  def reporter_names
    self.reporters.map{|reporter| reporter.name}
  end

  def reporter_id
    self.reporters.map{|reporter| reporter.id}.first
  end

  def self.search(term)
    article_results = Article.where("upper(headline) like ?", "%#{term.upcase}%") + Article.where("headline like ?", "%#{term.capitalize}%")
    project_results = Project.where("upper(name) like ?", "%#{term.upcase}%") + Project.where("name like ?", "%#{term.capitalize}%")
    article_results.uniq + project_results.uniq
  end

  def publication
    self.reporters.first.publication
  end

  def reporter_names
    self.reporters.map{|reporter| reporter.name}
  end

  def self.articles_from(publication)
    self.all.select{|article|article.reporter.publication==publication}
  end

end
