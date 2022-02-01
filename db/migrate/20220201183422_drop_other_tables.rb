class DropOtherTables < ActiveRecord::Migration[6.1]
  def change
    drop_table :addresses
    drop_table :clients
    drop_table :clients_roles
    drop_table :orders
    drop_table :products
    drop_table :roles
  end
end
