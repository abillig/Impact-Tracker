class ImpactsController < ApplicationController
  # before_action :impact_add_search, only: [:index, :create, :update]

  def index
  end

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


  def search
    impact_types_array = params[:impact][:impact_types].map{|type_id|type_id.to_i}
    impacts_of_specified_types = ImpactRecord.collect_records_having_these_impact_types(impact_types_array).flatten
    relevant_impacts = impacts_of_specified_types.map{|impact_record| impact_record.impact}
    @relevant_dates = date_selector(relevant_impacts, params[:impact][:start], params[:impact][:end])
  end

  def date_selector(array, start_date, end_date)
    array.select do |impact|
      if impact.impact_date
        formatted_date = impact.impact_date.strftime("%Y-%m-%d")
        formatted_date > start_date && formatted_date < end_date
      end
    end
  end

end
