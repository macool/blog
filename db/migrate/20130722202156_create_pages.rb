class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :slug, null: false
      t.boolean :published, default: false
      t.string :title, null: false
      t.text :content
      t.timestamps
    end
    add_index :pages, :slug, unique: true
  end
end
