class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|

      t.integer   :year
      t.string    :make
      t.string    :model
      t.string    :vin
      t.string    :usage
      t.integer   :usage_miles
      t.integer   :ann_miles
      t.string    :grg_addr_1
      t.string    :grg_addr_2
      t.string    :grg_city
      t.string    :grg_state
      t.integer   :grg_zip
      t.integer   :policy_id
      t.timestamps
      
    end
    add_index   :vehicles, :policy_id
  end
end