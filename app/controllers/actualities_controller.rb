class ActualitiesController < ApplicationController
  def index
    @actualities = Actualite.all
  end

  def showactualitie
    @actualite = Actualite.find(params[:id])
  end
end
