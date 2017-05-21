class AddWorkerIdToUserProfile < ActiveRecord::Migration[5.0]
  def change
  	change_table :user_profiles do |t|
      t.belongs_to :user, null: false, index: true
    end
  end
end
