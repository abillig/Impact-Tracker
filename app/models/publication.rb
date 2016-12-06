class Publication < ApplicationRecord
  has_many :users
  has_many :reporters
  has_many :articles, through: :reporters
end
