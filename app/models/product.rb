class Product < ActiveRecord::Base
  belongs_to :sub_category

  def self.list_all_details
    self.joins({:sub_category => :category})
  end
end
