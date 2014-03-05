class AddUserIdToPolicy < ActiveRecord::Migration
  def change
  	add_column :policies, :user_id, :integer
  	add_index :policies, :user_id
  end
end
