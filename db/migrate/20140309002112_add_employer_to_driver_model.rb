class AddEmployerToDriverModel < ActiveRecord::Migration
  def change
  	add_column :drivers, :job_employer, :string
  end
end
