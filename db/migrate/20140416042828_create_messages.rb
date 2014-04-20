class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|

      t.text 	:text
      t.integer :user_id
      t.integer	:policy_id
      t.timestamps
    end

    add_index	:messages, :policy_id
    add_index	:messages, :user_id
  end
end
