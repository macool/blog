class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :email, null: false
      t.string :name, null: false
      t.string :website
      t.timestamps
    end
    add_index :guests, :email, unique: true
  end
end
