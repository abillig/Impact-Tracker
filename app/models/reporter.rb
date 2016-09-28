class Reporter < ApplicationRecord
  has_many :reporter_articles
  has_many :articles, through: :reporter_articles 

end
