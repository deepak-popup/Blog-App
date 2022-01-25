class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :address
      t.belongs_to :client

      t.timestamps
    end
  end
end
