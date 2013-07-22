class User < ActiveRecord::Base
  authenticates_with_sorcery!

# relations:
  has_many :posts

# validations:
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

end
