class ImpactRecordsController < ApplicationController
  def new
    @impact_record = ImpactRecord.new
    @impact_types = ImpactType.all.uniq
    @article=Article.find(params[:format])
    if current_user.is_reporter && @article.reporter_names.include?(current_user.name) == false
      flash[:notice] = "You can only add impacts to articles you have authored. Please contact the article's reporter to add an impact."
      redirect_to article_path(@article)
    end
  end

  def edit
    @impact_record = ImpactRecord.find(params[:id])
    @impact_types = ImpactType.all.uniq
    @article=@impact_record.article
    @description = @impact_record.impact.description
    @impact_date = @impact_record.impact.impact_date
    if current_user.is_reporter && @article.reporter_names.include?(current_user.name) == false
      flash[:notice] = "You can only add impacts to articles you have authored. Please contact the article's reporter to add an impact."
      redirect_to article_path(@article)
    end

  end

  def create
    article = Article.find_by(headline: params[:impact_record][:article])
#prevent creation of impact if reporter didn't write article or isn't editor
      if current_user.is_reporter && article.reporter_names.include?(current_user.name) == false
        flash[:notice] = "You can only add impacts to articles you have authored. Please contact the article's reporter to add an impact."
        redirect_to article_path(article)
      else
            if params[:impact_record][:impact_type]
              impact_type = ImpactType.find_by(name: params[:impact_record][:impact_type])
            else
              impact_type = ImpactType.find(params[:impact_record][:impact_type].to_i)
            end
          impact = Impact.create(description: params[:impact_record][:impact], impact_date: params[:impact_record][:impact_id], user_id: current_user.id)
          impact.save
      # note that I'm including the below line because impact_type wasn't being recorded.
      # remove the line if it breaks anything else.
          impact_type = ImpactType.find_by(name: params[:impact_record][:impact_type])
          impact_record = ImpactRecord.create({article_id: article.id, impact_type_id: impact_type.id, impact_id: impact.id})
          impact_record.save
          #removing action mailer until it is fixed in development mode.
          # AdminMailer.new_impact(User.where(name: "Avram Billig").first, current_user, article, impact_record).deliver
          # AdminMailer.new_impact(User.where(name: "Anjanette Delgado").first, current_user, article, impact_record).deliver
          # AdminMailer.new_impact(User.where(name: "Frank Scandale").first, current_user, article, impact_record).deliver
          flash[:notice] = "Impact added!"
          redirect_to article_path(article)
      end
  end

  def add_from_home
    @impact_record = ImpactRecord.new
    @impact_type = ImpactType.find(params[:impact_id])
    @article=Article.find(params[:article])
  end

  def update
    @impact_record = ImpactRecord.find(params[:id])
    @impact_record.impact_type = ImpactType.find_by(name: params[:impact_record][:impact_type])
    @impact = @impact_record.impact
    @impact.impact_date = params[:impact_record][:impact_id]
    @impact.description = params[:impact_record][:impact]
    @impact_record.save
    @impact.save
  end


end
