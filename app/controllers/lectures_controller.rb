class LecturesController < ApplicationController
  before_action :set_lecture, only: [:destroy]

  def create
    @lecture = Lecture.new(lecture_params)
    @genius = Genius.find(params[:genius_id])
    @lecture.genius = @genius
    @lecture.user = current_user
    if @lecture.save
      redirect_to genius_path(@genius)
    else
      render 'geniuses/show'
    end
  end

  def destroy
    @lecture.destroy
    redirect_to new_genius_path
  end

  private

  def set_lecture
    @lecture = Lecture.find(params[:id])
  end

  def lecture_params
    params.require(:lecture).permit(:start_time, :end_time)
  end
end
