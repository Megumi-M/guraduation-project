class ChangeDetatypePostalcodeOfUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :postal_code, :string
  end
end
