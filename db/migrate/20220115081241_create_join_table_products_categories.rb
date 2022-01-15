class CreateJoinTableProductsCategories < ActiveRecord::Migration[6.1]
  def up
    create_join_table :products, :categories
  end

  def down 
    drop_join_table :products, :categories
  end
end
