class AteliersController < ApplicationController
  def index
    @ateliers = Atelier.all
  end

  def show
    @atelier = Atelier.find(params[:id])
  end

  private

  def atelier_params
    params.require(:atelier).permit(:name, :description, :tarif, :temoignagnes)
  end
end
