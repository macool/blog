class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post, null: false
      t.references :guest, null: false
      t.text :content, null: false
      t.timestamps
    end
    add_index :comments, :post_id
    add_index :comments, :guest_id
  end
end
