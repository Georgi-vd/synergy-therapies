class ActualitiesController < ApplicationController
  def index
    @actualities = Actualite.all
  end

  def show
    @actualite = Actualite.find(params[:id])
  end

  private

  def actuality_params
    params.require(:actuality).permit(:name, :description)
  end
end
