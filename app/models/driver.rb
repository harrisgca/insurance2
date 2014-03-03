class Driver < ActiveRecord::Base
  belongs_to :policy
  
  def full_name
    first_name + " " + last_name
  end
end
