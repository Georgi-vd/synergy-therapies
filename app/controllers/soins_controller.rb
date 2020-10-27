class SoinsController < ApplicationController
  def index
    @soins = Soin.all
  end

  def show
    @soin = Soin.find(params[:id])
  end

  private

  def soin_params
    params.require(:soin).permit(:name, :description, :tarif, :temoignagnes)
  end
end
