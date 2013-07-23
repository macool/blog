class Comment < ActiveRecord::Base

# relations:
  belongs_to :post
  belongs_to :person, class_name: Guest, foreign_key: :guest_id

# validations:
  validates :content, presence: true
  validates :guest_id, presence: true
  validates :post_id, presence: true

end
