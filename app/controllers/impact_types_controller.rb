class ImpactTypesController < ApplicationController

  def index
    @impact_types = ImpactType.all
  end

  def show
    @impact_type = ImpactType.find(params[:id])
    @impact_types = ImpactType.all
    @num_impacts = @impact_type.impacts.length


  end


end
