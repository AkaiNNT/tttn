class CreateAdministrators < ActiveRecord::Migration[5.0]
  def change
    create_table :administrators do |t|
      t.integer :role_id
      t.string :email
      
      t.timestamps null: false
    end
  end
end
