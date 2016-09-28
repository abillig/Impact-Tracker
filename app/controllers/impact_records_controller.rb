class ImpactRecordsController < ApplicationController
  def new
    @impact_record = ImpactRecord.new
    @impact_types = ImpactType.all.uniq
    @article=Article.find(params[:format])
  end

  def create
    article = Article.find_by(headline: params[:impact_record][:article])
    impact_type = ImpactType.find(params[:impact_record][:impact_type].to_i)
    impact = Impact.create(description: params[:impact_record][:impact])
    byebug
    impact.save
    impact_record = ImpactRecord.create({article_id: article.id, impact_type_id: impact_type.id, impact_id: impact.id})
    impact_record.save
    redirect_to article_path(article)
  end

end
