class ImpactTypesController < ApplicationController

  def index
    @impact_types = ImpactType.all
  end


end
