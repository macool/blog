class Comment < ActiveRecord::Base

# scopes:
  scope :approved, -> { where(visible: true).order("id ASC") }
  
# relations:
  belongs_to :post

# validations:
  validates :content, presence: true
  validates :post_id, presence: true
  validates :email, presence: true
  validates :name, presence: true

# methods:
  def person_image
    "http://www.gravatar.com/avatar/#{gravatar_hash}"
  end
  def gravatar_hash
    @gravatar_hash ||= Digest::MD5.hexdigest(email)
  end

end
