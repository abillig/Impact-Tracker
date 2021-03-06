class Impact < ApplicationRecord
  has_many :article_impacts
  has_many :articles, through: :article_impacts
  has_many :impact_records
  has_many :impact_types, through: :impact_records
  belongs_to :user


  def self.search(term)
    Impact.where("name like ?", "%#{term}%")
  end

  def publication
    self.user.publication
  end

  def impact_type
    self.impact_records.first.impact_type
  end

  def self.impacts_from(publication)
    self.all.select{|impact|impact.user.publication==publication}
  end

  def self.current_publication
    #this method may fail because I created the publication method.
    Impact.all.where(publication: current_user.publication)
  end


end
