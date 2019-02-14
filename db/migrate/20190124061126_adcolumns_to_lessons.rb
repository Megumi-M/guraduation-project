class AdcolumnsToLessons < ActiveRecord::Migration[5.1]
  def change
    add_column :lessons, :event_date, :datetime

    add_column :lessons, :close_date, :datetime
  end
end
