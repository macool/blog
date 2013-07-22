class AddAdminUser < ActiveRecord::Migration
  def up
    User.create! username: "admin", password: "admin", email: "a@macool.me", is_admin: true
  end
  def down
    User.find_each do |user|
      user.destroy
    end
  end
end
