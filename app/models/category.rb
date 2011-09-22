class Category < ActiveRecord::Base
  has_many :sub_categories

  def self.list_all_details
    self.includes({:sub_categories => :products})
  end
  
end
