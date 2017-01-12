class ImpactRecord < ApplicationRecord
  belongs_to :impact
  belongs_to :impact_type
  belongs_to :article, optional: true
  belongs_to :project, optional: true

  # validates :article_id, length: {minimum: 1, allow_nil: true}
  # validates :project_id, length: {minimum: 1, allow_nil: true}

def self.collect_records_having_these_impact_types(array)
  array.each_with_object([]) do |impact_type_id, array|
    array << ImpactRecord.where(impact_type_id: impact_type_id)
  end
end

end
