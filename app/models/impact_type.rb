class ImpactType < ApplicationRecord
  has_many :impact_records
  has_many :impacts, through: :impact_records


end
