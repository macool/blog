class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts,force: true do |t|
      t.string :slug, null: false
      t.boolean :published, default: false
      t.string :title, null: false
      t.text :content
      t.timestamps
    end
    add_index :posts, :slug, unique: true
  end
end
