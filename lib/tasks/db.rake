namespace :db do

  desc "populate Categories"
  task :populate_categories => [:environment] do
    10.times  do |ct|
      Category.create(:name => "Category#{ct}" ,:description => "This is the Descriptionof category#{ct}")
    end
  end

  desc "populate sub_categories"
  task :populate_sub_categories => [:environment] do 
    a = Category.find(:all )
#    a = a.collect{|x| a.id}
    a.each do |i|
      5.times  do |st|
        SubCategory.create(:name => "Sub Category#{st}" ,:description => "This is the Description of sub category#{st}",:category_id => "#{i.id}")
      end
    end
  end

  desc "populate products"
  task :populate_products => [:environment] do
    a = SubCategory.find(:all)
    #a = a.collect{|x| a.id}
    a.each do |i|
      5.times  do |st|
        Product.create(:name => "Product#{st}" ,:sub_category_id => "#{i.id}")
      end
    end
  end
  task :load => [ :populate_categories, :populate_sub_categories ,:populate_products]
end