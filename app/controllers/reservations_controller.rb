class ReservationsController < ApplicationController
  def index
    @reservations_lessons = current_user.reservation_lessons
  end
  
  def new
    @reservation = Reservation.new(lesson_id: params[:lesson_id])
    @organizer = @reservation.lesson.user.name
  end
  
  def create
    @reservation = current_user.reservations.create(lesson_id: params[:lesson_id])
    if @reservation.save
      redirect_to reservations_url, notice: "レッスンを予約しました"
    else
      render "new"
    end
  end
  
  def destroy
    @reservation = current_user.reservations.find_by(id: params[:id]).destroy
    redirect_to reservations_path, notice: "予約をキャンセルしました"
  end
end
