class Comment < ActiveRecord::Base

# scopes:
  scope :approved, -> { where(visible: true) }
  
# relations:
  belongs_to :post

# validations:
  validates :content, presence: true
  validates :post_id, presence: true
  validates :email, presence: true
  validates :name, presence: true

end
