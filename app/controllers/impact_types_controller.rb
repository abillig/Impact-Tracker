class ImpactTypesController < ApplicationController

  def index
    @impact_types = ImpactType.all
  end

  def show

  end


end
