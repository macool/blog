class AddContentTypeToPost < ActiveRecord::Migration
  def change
    add_column :posts, :content_type, :string, default: "markdown"
  end
end
