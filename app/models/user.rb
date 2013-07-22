class User < ActiveRecord::Base
  authenticates_with_sorcery!

# relations:
  has_many :posts

# validations:
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates_length_of :password, :minimum => 3, :message => "password must be at least 3 characters long", :if => :password
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password

end
