class User < ApplicationRecord
  has_secure_password

  def reporter
    Reporter.where(name: self.name)
  end

  def articles
    self.reporter.first.articles
  end

end
