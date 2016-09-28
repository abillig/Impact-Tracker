class ImpactRecord < ApplicationRecord
  belongs_to :impact
  belongs_to :impact_type
  belongs_to :article

end
