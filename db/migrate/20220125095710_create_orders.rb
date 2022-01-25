class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.belongs_to :client

      t.timestamps
    end
  end
end
