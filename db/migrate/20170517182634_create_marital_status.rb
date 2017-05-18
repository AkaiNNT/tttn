class CreateMaritalStatus < ActiveRecord::Migration[5.0]
  def change
    create_table :marital_statuses do |t|
    	t.string :status
    end
  end
end
