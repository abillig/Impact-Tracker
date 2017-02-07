class ImpactsController < ApplicationController
  # before_action :impact_add_search, only: [:index, :create, :update]

  def index
  end

  def testing
  end

  def new
    @impact = Impact.new
    @articles = Article.all
  end


  def selector

  end

  def download
    impacts = ""

    impacts << "Impacts: \n\n"

    params[:impacts].each do |impact_id|
      impact = Impact.find(impact_id)
      impacts << "Article: " + impact.impact_records.first.article.headline + "\n"
      impacts << "By: " + impact.impact_records.first.article.reporter_name + "\n"
      impacts << "Impact type: " + impact.impact_types.first.name + "\n"
      impacts << "Impact description: " + impact.description + "\n"
      impacts << "Impact date: " + impact.impact_date.to_s + "\n\n"
    end

    send_data impacts,
      :type => 'text',
      :disposition => "attachment; filename=" + "Impact_search_" + Time.now.to_s
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
    #now to select out for relevant publication
    publication_impacts = impacts_of_specified_types.select do |impact|
      #have to include conditional b/c for now not all impacts have users. can remove for production.
      if impact.impact.user_id
        impact.impact.user.publication == current_user.publication
      end
    end
    relevant_impacts = publication_impacts.map{|impact_record| impact_record.impact}
    @relevant_dates = date_selector(relevant_impacts, params[:impact][:start], params[:impact][:end])
  end

  def basic_search
    byebug;
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
