class ImpactTypesController < ApplicationController

  def index
    @impact_types = ImpactType.all
  end

  def show
    @impact_type = ImpactType.find(params[:id])
    @impact_types = ImpactType.all
    @impacts = Impact.impacts_from(current_user.publication).select{|impact|impact.impact_type == @impact_type}
    @num_impacts = @impacts.length

  end


end
