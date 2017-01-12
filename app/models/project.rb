class Project < ApplicationRecord
  has_many :articles
  has_many :impact_records
  has_many :impact_types, through: :impact_records
  has_many :impacts, through: :impact_records
end
