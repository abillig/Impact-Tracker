class ImpactType < ApplicationRecord
  has_many :impact_records
  has_many :impacts, through: :impact_records

def addition_name
  addition_name_hash = {"Law change/Policy change"=>"law/policy change",
  "Legal Impact"=>"legal impact",
  "Government Investigation" => "government investigation",
  "Media Impact" => "media impact",
  "Social Media" => "social media impact",
  "Award"=>"award",
  "Community Engagement"=>"community engagement",
  "Referenced by Key Individual"=>"reference by a key individual",
  "Major Citation"=>"major citation",
  "Institutional Action"=>"institutional action",
  "Advocacy Impact"=>"advocacy impact",
  "Legislation Introduced" =>"legislation being introduced"}
  addition_name_hash[self.name]
end

end
