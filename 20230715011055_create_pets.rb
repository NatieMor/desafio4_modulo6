class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :race
      t.integer :age
      t.string :gender
      t.string :item
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
