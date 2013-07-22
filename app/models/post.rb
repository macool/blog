class Post < ActiveRecord::Base

# relations:
  belongs_to :user

# validations:
  validates :slug, uniqueness: true, presence: true
  validates :title, presence: true
  validates :user_id, presence: true

end
