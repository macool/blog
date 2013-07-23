class AddAcceptsCommentsToPost < ActiveRecord::Migration
  def change
    add_column :posts, :can_comment, :boolean, default: true
  end
end
