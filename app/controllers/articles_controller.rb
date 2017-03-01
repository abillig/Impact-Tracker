class ArticlesController < ApplicationController
  # before_action :search, only: [:index, :create, :update]

  def index
    @articles = Article.articles_from(current_user.publication)
    # limit reporters for dropdown to those of relevant publication
    @reporters = Reporter.reporters_from(current_user.publication)
  end

  def show
    @article = Article.find(params[:id])
  end

  def articles_download
    impacts = ""
    @article = Article.find(params[:id])
    impacts << @article.headline + "\n"
    impacts << "By " + @article.reporter_name + "\n\n"
    impacts << "Impacts: \n"
    Article.find(params[:id]).impacts.each do |impact|
      impacts << impact.impact_types.first.name + ": " + impact.description + "\n\n"
    end

    send_data impacts,
      :type => 'text',
      :disposition => "attachment; filename=" + @article.headline
  end

  def new
    @article = Article.new
    @reporters = Reporter.reporters_from(current_user.publication)
    @projects = Project.all
  end

  def create
    if params[:reporter][:reporters].empty?
      flash[:notice] = "Please list a reporter."
      redirect_to new_article_path
    else

      article = Article.create({headline: params[:article][:headline],url: params[:article][:url],info: params[:article][:info],date: params[:article][:date], project_id: project_id_decider(params[:article][:project_id])})
      params[:reporter][:reporters].each do |reporter_name|
        article.reporters << Reporter.find_by(name: reporter_name)
      end
      redirect_to article_path(article.id)
    end
  end

  def project_id_decider(params)
    params.blank? ? 1.to_s : params
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
      @reporters = Reporter.reporters_from(current_user.publication)
      @projects = Project.all
  end

  def update
    @article = Article.find(params[:id])
    @article.headline = params[:article][:headline]
    @article.url = params[:article][:url]
    @article.info = params[:article][:info]
    @article.reporters = []
    params[:reporter][:reporters].each do |reporter_name|
      @article.reporters << Reporter.find_by(name: reporter_name)
    end
    @article.date = params[:article][:date]
    if params[:article][:project_id] != ""
      @article.project = Project.find(params[:article][:project_id])
    end
    @article.save
    redirect_to article_path(@article)
  end


end

private

def article_params
    params.require(:article).permit(:headline, :url, :info, :date, :reporters, :project_id)
end
