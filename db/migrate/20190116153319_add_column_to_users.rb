class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :nickname, :string
    add_column :users, :telephone, :integer
    add_column :users, :postal_code, :integer
    add_column :users, :address, :string
    add_column :users, :icon, :string
    add_column :users, :introduction, :text
  end
end
