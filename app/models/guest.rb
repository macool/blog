class Guest < ActiveRecord::Base

# relations:
  has_many :comments

# validations:
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

end
