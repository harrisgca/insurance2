class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|

      t.string  :mail_addr_1
      t.string  :mail_addr_2
      t.string  :mail_addr_city
      t.string  :mail_addr_state
      t.integer :mail_addr_zip
      t.timestamps
    end
  end
end