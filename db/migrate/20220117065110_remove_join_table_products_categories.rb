class RemoveJoinTableProductsCategories < ActiveRecord::Migration[6.1]
  def change
    drop_join_table :products, :categories
  end
end
