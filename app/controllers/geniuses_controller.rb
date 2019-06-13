class GeniusesController < ApplicationController
  before_action :set_genius, only: [:show, :increment_ig, :destroy]
  def index
    @geniuses = Genius.with_photo.order(iq: :desc)
  end

  def show
    # @genius = Genius.find(params[:id])
    @lecture = Lecture.new
  end

  def show_my
    @my_geniuses = Genius.where(user_id: current_user).order(name: :asc)
  end

  def show_my_bookings
    @my_bookings = Lecture.where(user_id: current_user)
  end

  def increment_ig
    @genius.iq += 1
    @genius.save
  end

  def new
    @photo = Photo.new
    @genius = Genius.new
    show_my
    show_my_bookings
  end

  def create
    @genius = Genius.new(genius_params)
    @genius.user = current_user
    # if @genius.save
    #   redirect_to new_genius_path
    # else
    #   render :new
    # end
    if @genius.save
      respond_to do |format|
        format.html { redirect_to new_genius_path }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js  # <-- idem
      end
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
