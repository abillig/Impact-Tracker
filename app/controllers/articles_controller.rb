class ArticlesController < ApplicationController
  # before_action :search, only: [:index, :create, :update]

  def index
    @articles = Article.all
    # limit reporters for dropdown to those of relevant publication
    @reporters = Reporter.reporters_from(current_user.publication)
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
    @reporters = Reporter.reporters_from(current_user.publication)
    @projects = Project.all
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
    @article = Article.find(params[:id])
    #only allow editors or article authors to edit articles
    if current_user.is_reporter && @article.reporter_names.include?(current_user.name) == false
      flash[:notice] = "Only an article's reporters can edit the article."
      redirect_to article_path(@article)
    end
      @reporters = Reporter.all
      @projects = Project.all
  end


end

private

def article_params
    params.require(:article).permit(:headline, :url, :info, :date, :reporters)
end
