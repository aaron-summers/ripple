class AddActiveUserToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :active_user, :boolean
  end
end
