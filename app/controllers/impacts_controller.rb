class ImpactsController < ApplicationController
  # before_action :impact_add_search, only: [:index, :create, :update]



  def new
    @impact = Impact.new
    @articles = Article.all
  end

  def selector

  end

  def article_selector
    @reporters = Reporter.all
    @articles = Article.search(params[:search])
  end

  def impact_add_search
    # @article = Article.search(params[:search]).first
end

end
