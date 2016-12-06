class Reporter < ApplicationRecord
  belongs_to :publication 
  has_many :reporter_articles
  has_many :articles, through: :reporter_articles

end
