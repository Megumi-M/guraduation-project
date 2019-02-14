class ChangeDatatypeReadOfMessages < ActiveRecord::Migration[5.1]
  def change
    change_column_null :messages, :read, false
  end
end
