class ReportersController < ApplicationController

  def index
    @reporters = Reporter.all
  end

  def show
    @reporter = Reporter.find(params[:id])
  end

  def search_results
    # @reporters = Reporter.all
    # @reporter = Reporter.find(params[:id])
  end

  def new
    @reporter = Reporter.new
    @publications = Publication.all
  end

  def create
    Reporter.create(reporter_params)
    redirect_to root_url
  end


  private

  def reporter_params
    params.require(:reporter).permit(params[:reporter].keys)
  end

end
