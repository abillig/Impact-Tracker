class ImpactsController < ApplicationController

  def new
    @impact = Impact.new
    @articles = Article.all
  end

  def selector

  end

  def article_selector
    byebug
    @reporters = Reporter.all
    @articles = Article.search(params[:search])
  end

end
