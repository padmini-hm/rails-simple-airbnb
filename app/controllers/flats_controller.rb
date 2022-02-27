class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
  def index
    @flats = Flat.all
  end

  def show

  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    if (@flat.save)
      redirect_to flat_path(@flat), notice: 'Flat was successfully created.'
    else
      render :new
    end
  end

  def edit

  end

  def update
    if (@flat.update(flat_params))
      redirect_to flat_path(@flat), notice: 'Flat was successfully updated.'
    else
      render :edit
    end
  end

  def destroy

    @flat.destroy
    redirect_to flats_path, notice: 'Flat was successfully destroyed.'
  end

  def top
    @flats = Flat.where(rating: 5)
  end


  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :rating)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
