class AddLessonRefToReservations < ActiveRecord::Migration[5.1]
  def change
    add_reference :reservations, :lesson, foreign_key: true
  end
end
