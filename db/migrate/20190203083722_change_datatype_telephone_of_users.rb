class ChangeDatatypeTelephoneOfUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :telephone, :string
  end
end
