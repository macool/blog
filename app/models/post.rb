class Post < ActiveRecord::Base

# relations:
  belongs_to :author, class_name: User, foreign_key: :user_id
  has_many :comments

# validations:
  validates :slug, uniqueness: true, presence: true
  validates :title, presence: true
  validates :user_id, presence: true

end
