class GeniusesController < ApplicationController
  before_action :set_genius, only: [:show, :destroy]
  def index
    @geniuses = Genius.all
  end

  def show
    # @genius = Genius.find(params[:id])
    @lecture = Lecture.new
  end

  def show_my
    @my_geniuses = Genius.where(user_id: current_user).order(name: :asc)
  end

  def new
    @genius = Genius.new
    show_my
  end

  def create
    @genius = Genius.new(genius_params)
    @genius.user = current_user
    if @genius.save
      redirect_to new_genius_path
    else
      render :new
    end
  end

  def destroy
    # @genius = Genius.find(params[:id])
    @genius.destroy
    redirect_to new_genius_path
  end

  private

  def set_genius
    @genius = Genius.find(params[:id])
  end

  def genius_params
    params.require(:genius).permit(:name, :year, :category, :description, :cost, :iq)
  end
end
