class AddColumnCategoryId < ActiveRecord::Migration
  def up
    add_column :sub_categories , :category_id ,:integer
  end

  def down
  end
end
