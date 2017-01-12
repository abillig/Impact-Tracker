class Reporter < ApplicationRecord
  belongs_to :publication
  has_many :reporter_articles
  has_many :articles, through: :reporter_articles

  def self.reporters_from(publication)
    self.all.select{|reporter|reporter.publication == publication}
  end

  def self.search(term)
    where('LOWER(name) LIKE :name', name: "%#{term.downcase}%")
  end

end
