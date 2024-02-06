class MandalasController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @mandalas = Mandala.all
  end
  def show
    @mandala = Mandala.find(params[:id])
    @cells = @mandala.cells
  end
  def new
    @mandala = Mandala.new
    9.times do |i|
      9.times do |j|
        @mandala.cells.build(row: i + 1, column: j + 1)
      end
    end
  end
  def create
    @mandala = current_user.mandalas.build(mandala_params)
    if @mandala.save
      redirect_to @mandala, :notice => "Successfully created mandala."
    else
      render :action => 'new'
    end
  end
  
  def edit
    @mandala = Mandala.find(params[:id])
  end
  def update
    @mandala = Mandala.find(params[:id])
    if @mandala.update(mandala_params)
      redirect_to @mandala, :notice  => "Successfully updated mandala."
    else
      render :action => 'edit'
    end
  end
  def destroy
    @mandala = Mandala.find(params[:id])
    @mandala.destroy
    redirect_to mandalas_url, :notice => "Successfully destroyed mandala."
  end

  private

  def mandala_params
    params.require(:mandala).permit(:name, cells_attributes: [:body, :row, :column])
  end
end
