class CellsController < ApplicationController
  def index
    @cells = Cell.all
  end

  def show
    @cell = Cell.find(params[:id])
  end

end
