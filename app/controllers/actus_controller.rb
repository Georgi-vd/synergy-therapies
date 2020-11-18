class ActusController < ApplicationController
  def index
    @actus = Actu.all
  end

  def show
    @actus = Actu.find(params[:id])
  end

  private

  def actu_params
    params.require(:actu).permit(:name, :description)
  end
end
