class AddColumnCapacityToLessons < ActiveRecord::Migration[5.1]
  def change
    add_column :lessons, :capacity, :integer
  end
end
