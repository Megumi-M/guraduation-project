class RenameAreaColumnToAddress < ActiveRecord::Migration[5.1]
  def change
    rename_column :lessons, :area, :address
  end
end
