class AteliersController < ApplicationController
  def index
    @ateliers = Atelier.all
  end

  def show
    @atelier = Atelier.find(params[:id])
  end
end
