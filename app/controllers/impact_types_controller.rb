class ImpactTypesController < ApplicationController

  def index
    @impact_types = ImpactType.all
  end

  def show
    @impact_type = ImpactType.find(params[:id])
    @impact_types = ImpactType.all
    @num_impacts = @impact_type.impacts.length
    @impacts = Impact.impacts_from(current_user.publication).select{|impact|impact.impact_type == @impact_type}


  end


end
