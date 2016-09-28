class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    @reporters = Reporter.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
    @reporters = Reporter.all
  end

  def create
    article = Article.create({headline: params[:article][:headline],
      url: params[:article][:url],
      info: params[:article][:info],
      date: params[:article][:date]})
    article.reporters << Reporter.find_by(name: params[:article][:reporters])
  end

  def search
    @articles = Article.search(params[:search])
    @reporters = Reporter.all
  end

end

private

def article_params
    params.require(:article).permit(:headline, :url, :info, :date, :reporters)
end
