class CreateUserProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_profiles do |t|
    	t.datetime :dob
    	t.integer :age
    	t.string :phone
    	t.string :sex
			t.float	:height
			t.float	:weight
			t.string :hobby
			t.string :location
			t.string :hometown
			t.string :content
			t.string :looking_for
			t.boolean :is_verify, default: false
    end
  end
end
