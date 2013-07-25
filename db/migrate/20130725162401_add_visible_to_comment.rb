class AddVisibleToComment < ActiveRecord::Migration
  def change
    add_column :comments, :visible, :boolean, default: false
    add_index :comments, :visible
  end
end
