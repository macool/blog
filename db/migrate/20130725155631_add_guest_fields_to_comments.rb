class AddGuestFieldsToComments < ActiveRecord::Migration
  def up
    change_table :comments do |t|
      t.string :email
      t.string :name
      t.string :website
    end
    add_index :comments, :email
  end
  def down
    remove_index :comments, :email
    change_table :comments do |t|
      t.integer :guest_id
      t.remove :email, :name, :website
    end
  end
end
