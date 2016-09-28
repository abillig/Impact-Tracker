class ReportersController < ApplicationController

  def index
    @reporters = Reporter.all
  end

  def show
    @reporter = Reporter.find(params[:id])
  end

  def search_results
    @reporters = Reporter.all
    @reporter = Reporter.find(params[:id])
  end

end
