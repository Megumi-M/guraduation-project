module LessonsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_lessons_path
    elsif action_name == 'edit'
      lesson_path
    end
  end    
end
