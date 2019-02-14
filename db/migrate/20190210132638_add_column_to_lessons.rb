class AddColumnToLessons < ActiveRecord::Migration[5.1]
  def change
    add_column :lessons, :area, :text
  end
end
