class User < ActiveRecord::Base
  
# modules included:
  include ModelCaching
  include PeopleGravatar

  authenticates_with_sorcery!

# callbacks:
  before_destroy :check_if_not_only_user

# relations:
  has_many :posts, dependent: :destroy

# validations:
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates_length_of :password, :minimum => 3, :message => "password must be at least 3 characters long", :if => :password
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password

# methods:
  def name
    read_attribute(:name).blank? ? read_attribute(:username) : read_attribute(:name)
  end
  def to_param
    username.parameterize
  end
  def check_if_not_only_user
    unless User.count > 1
      errors[:base] << I18n.t("cant_destroy_last_user", default: "You can't destroy the last user")
      false
    else
      assign_posts_to_first_user!
      true
    end
  end
  
private
  def assign_posts_to_first_user!
    new_user_id = User.where.not(id: id).select(:id).first.id
    posts.find_each do |post|
      post.update_attribute :user_id, new_user_id
    end
  end

end
