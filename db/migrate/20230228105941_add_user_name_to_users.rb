class AddUserNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :usernmae, :string
  end
end
