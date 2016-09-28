class ReporterArticle < ApplicationRecord
  belongs_to :reporter
  belongs_to :article
  
end
