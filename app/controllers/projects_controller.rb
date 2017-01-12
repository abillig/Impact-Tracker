class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    project = Project.create({description: params[:project][:description]})
    redirect_to impact_types_path
  end

  def show
    @project = Project.find(params[:id])
  end

end
