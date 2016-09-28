class Impact < ApplicationRecord
  has_many :article_impacts
  has_many :articles, through: :article_impacts
  has_many :impact_records 
  has_many :impact_types, through: :impact_records
end
