class RemoveUserPhoneIndex < ActiveRecord::Migration[5.0]
  def change
  	remove_index(:users, :name => 'index_users_on_phone')
  end
end
