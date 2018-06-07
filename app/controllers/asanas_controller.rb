class AsanasController < ApplicationController
  def index
    @asanas = Asana.all
  end

  def show
    @asana = Asana.friendly.find(params[:id])
  end

end
