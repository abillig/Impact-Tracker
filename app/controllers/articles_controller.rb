class ArticlesController < ApplicationController
  # before_action :search, only: [:index, :create, :update]

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
    redirect_to article_path(article.id)
  end

  def search
    # @articles = Article.search(params[:search])
    # @reporters = Reporter.all
  end

  def edit
  end


end

private

def article_params
    params.require(:article).permit(:headline, :url, :info, :date, :reporters)
end
