class User < ApplicationRecord
  belongs_to :publication
  belongs_to :position
  has_many :impacts
  has_secure_password

  def reporter
    Reporter.where(name: self.name)
  end

  def articles
    self.reporter.first.articles
  end

  def title
    self.position.name
  end

  def is_reporter
    self.title == "Reporter"
  end

end
