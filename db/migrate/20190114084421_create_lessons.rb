class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :content
      t.string :image

      t.timestamps
    end
  end
end
