class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :show, :edit, :update, :destroy]

  def index
    @lessons = Lesson.search(params[:keyword])
    if params[:keyword].present?
      render 'index.js.erb'
    end
  end

  def new
    if params[:back]
      @lesson = Lesson.new(lesson_params)
    else
      @lesson = Lesson.new
    end
  end
  
  def own
    @user_id = current_user.id
    @lessons = Lesson.where(user_id: @user_id).all
  end
  
  def show_reservations
    @lesson = Lesson.find(params[:id])
    @reservations = Reservation.where(lesson_id: @lesson.id).all
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.user_id = current_user.id
    if @lesson.save
      redirect_to lesson_path(@lesson.id), notice:"投稿しました！"
      #LessonMailer.lesson_mail(@lesson).deliver
    else
      render "new"
    end
  end
  
  def confirm
    @lesson = Lesson.new(lesson_params)
    @lesson.user_id = current_user.id
    if @lesson.invalid? 
      render 'new'
    end
  end
  
  def show_reservations
    @lesson = Lesson.find(params[:id])
    @reservations = Reservation.where(lesson_id: @lesson.id).all
  end
  
  def show
    @reservation = current_user.reservations.find_by(lesson_id: @lesson.id)
  end
  
  def edit
  end
  
  def update
    if @lesson.update(lesson_params)
      redirect_to lessons_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @lesson.destroy
      redirect_to lessons_path, notice:"削除しました！"
  end
  
  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end
  
  def lesson_params
    params.require(:lesson).permit(:title, :content, :image, :image_cache, :REGISTRABLE_ATTRIBUTES, :event_date, :close_date, :address, :capacity)
  end
end
