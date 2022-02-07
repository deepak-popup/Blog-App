class AddActiveAgeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :active, :boolean
    add_column :users, :age, :number
  end
end
