class RemoveGuestIdFromComment < ActiveRecord::Migration
  def up
    remove_index :comments, :guest_id
    remove_column :comments, :guest_id, :integer
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
