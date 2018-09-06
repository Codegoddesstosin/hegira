class AddUsernameToUsers < ActiveRecord::Migration[5.2]
  def change # anything inside here is translated to SQL code 
    add_column :users,  :username,  :string
    add_index  :users,   :username, unique: true
  end
end
