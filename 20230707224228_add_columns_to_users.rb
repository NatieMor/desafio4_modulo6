class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :nombre, :string
    add_column :users, :telefono, :string
    add_column :users, :direccion, :string
    add_column :users, :edad, :integer
  end
end
