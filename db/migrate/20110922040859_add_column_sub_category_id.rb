class AddColumnSubCategoryId < ActiveRecord::Migration
  def up
    add_column :products ,:sub_category_id ,:integer
  end

  def down
  end
end
