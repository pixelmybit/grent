class LecturesController < ApplicationController
  before_action :set_lecture, only: [:destroy]
  def new
    @lecture = Lecture.new
  end

  def create
    @lecture = Lecture.new(lecture_params)
    @genius = Genius.find(params[:genius_id])
    @lecture.genius_id = @genius.id
    @lecture.user_id = current_user
    if @lecture.save
      redirect_to lecture_path(@lecture)
    else
      render :new
    end
  end

  def destroy
   @lecture.destroy
   redirect_to genius_path(@genius)
  end

  private

  def set_lecture
    @lecture = Lecture.find(params[:id])
  end

  def lecture_params
    params.require(:lecture).permit(:start_time, :end_time)
  end
end
