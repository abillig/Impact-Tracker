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

  def project_download
    impacts = ""
    @project = Project.find(params[:id])
    impacts << @project.description + "\n\n"
    impacts << "Articles: \n"
    Project.find(params[:id]).articles.each do |article|
      impacts << article.headline + " by " + article.reporter_name + "\n\n"
    end
    impacts << "\nImpacts: \n"
    Project.find(params[:id]).impacts.each do |impact|
      impacts << impact.impact_types.first.name + ": " + impact.description + "\n\n"
    end

    send_data impacts,
      :type => 'text',
      :disposition => "attachment; filename=" + @project.description
  end


end
