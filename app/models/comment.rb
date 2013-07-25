class Comment < ActiveRecord::Base
  include PeopleGravatar

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
  alias_method :person_image, :image_url

end
