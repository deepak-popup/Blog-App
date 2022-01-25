class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :client_name
      t.integer :orders_count
      
      t.timestamps
    end
    
  end
end
