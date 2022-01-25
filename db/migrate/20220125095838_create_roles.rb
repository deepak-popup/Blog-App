class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.string :role
      t.timestamps
    end

    create_table :clients_roles, id: false do |t|
      t.belongs_to :client
      t.belongs_to :role
    end
  end
end
