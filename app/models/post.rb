class Post < ActiveRecord::Base


  validates :slug, uniqueness: true, presence: true
  validates :title, presence: true

end
