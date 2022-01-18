class ChangePriceProducts < ActiveRecord::Migration[6.1]
  def up 
    change_table :products do |t|
      t.change :price, :integer
    end
  end

  def down 
    change_table :products do |t|
      t.change :price, :decimal, precision: 5, scale: 2
    end
  end
end
