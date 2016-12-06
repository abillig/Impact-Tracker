class User < ApplicationRecord
  belongs_to :publication
  has_secure_password

  def reporter
    Reporter.where(name: self.name)
  end

  def articles
    self.reporter.first.articles
  end

end
