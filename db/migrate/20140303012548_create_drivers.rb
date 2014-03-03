class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|

      t.string   :first_name
      t.string   :middle_init
      t.string   :last_name
      t.date     :birthdate
      t.string   :relationship
      t.string   :vehicle
      t.string   :job_title
      t.string   :job_addr
      t.string   :job_city
      t.string   :job_state
      t.integer  :job_zip
      t.integer  :policy_id
      t.timestamps
      
    end
    add_index  :drivers, :policy_id
  end
end