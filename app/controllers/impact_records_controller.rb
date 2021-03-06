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
    if @impact_record.article
      @article=@impact_record.article
    elsif @impact_record.project
      @project=@impact_record.project
    end
    @description = @impact_record.impact.description
    @impact_date = @impact_record.impact.impact_date
    if current_user.is_reporter && @article.reporter_names.include?(current_user.name) == false
      flash[:notice] = "You can only add impacts to articles you have authored. Please contact the article's reporter to add an impact."
      redirect_to article_path(@article)
    end
  end

  def create
    if params[:impact_record][:article]
      article = Article.find_by(headline: params[:impact_record][:article])
    elsif params[:impact_record][:project]
      project = Project.find_by(name: params[:impact_record][:project])
    end
#prevent creation of impact if reporter didn't write article or isn't editor
      if params[:impact_record][:article] && current_user.is_reporter && article.reporter_names.include?(current_user.name) == false
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
          if params[:impact_record][:article]
            impact_record = ImpactRecord.create({article_id: article.id, impact_type_id: impact_type.id, impact_id: impact.id})
          elsif params[:impact_record][:project]
            impact_record = ImpactRecord.create({project_id: project.id, impact_type_id: impact_type.id, impact_id: impact.id})
          end
          impact_record.save
          #removing action mailer until it is fixed in development mode.
          # AdminMailer.new_impact(User.where(name: "Avram Billig").first, current_user, article, impact_record).deliver
          # AdminMailer.new_impact(User.where(name: "Anjanette Delgado").first, current_user, article, impact_record).deliver
          # AdminMailer.new_impact(User.where(name: "Frank Scandale").first, current_user, article, impact_record).deliver
          flash[:notice] = "Impact added!"
          if params[:impact_record][:article]
            redirect_to article_path(article)
          elsif params[:impact_record][:project]
            redirect_to project_path(project)
          end
      end
  end

  def add_from_home
    @impact_record = ImpactRecord.new
    @impact_type = ImpactType.find(params[:impact_id])
    @article=Article.find(params[:article])
  end

    def add_from_home_project
      @impact_record = ImpactRecord.new
      @impact_type = ImpactType.find(params[:impact_id])
      @project=Project.find(params[:project])
    end

  def update
    @impact_record = ImpactRecord.find(params[:id])
    @impact_record.impact_type = ImpactType.find_by(name: params[:impact_record][:impact_type])
    @impact = @impact_record.impact
    @impact.impact_date = params[:impact_record][:impact_id]
    @impact.description = params[:impact_record][:impact]
    @impact_record.save
    @impact.save
    if @impact_record.article
      redirect_to article_path(@impact_record.article)
    elsif @impact_record.project
      redirect_to project_path(@impact_record.project)
    end
  end

  def stats
    @last_month_impacts = ImpactRecord.all.select{|record|record.impact.impact_date > Time.now - 31 * 24 * 60 * 60}
    @types_hash = extract_types(@last_month_impacts)
  end

  def extract_types(collection)
    result = {}
    collection.each do |impact_record|
      result[impact_record.impact_type.name] ||= 0
      result[impact_record.impact_type.name] +=1
  end
  result
  end

  def stats_select
    impact_records_of_selected_type = ImpactRecord.where(impact_type_id: ImpactType.where(name: params[:type]).first.id)
    @of_type_during_date = impact_date_select(impact_records_of_selected_type, 30)
  end

  def impact_date_select(collection, days)
    collection.select{|record|record.impact.impact_date > Time.now - days * 24 * 60 * 60}.map{|record|record.impact}
  end



end
