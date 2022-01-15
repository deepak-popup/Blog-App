class RemovePartNoFromProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :part_no, :string
  end
end
