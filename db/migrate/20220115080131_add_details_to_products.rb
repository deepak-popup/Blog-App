class AddDetailsToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :price, :string
    add_column :products, :part_no, :string
  end
end
