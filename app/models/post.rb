class Post < ActiveRecord::Base

# scopes:
  scope :published, -> { where(published: true) }

# relations:
  belongs_to :author, class_name: User, foreign_key: :user_id
  has_many :comments, dependent: :destroy

# validations:
  validates :title, presence: true
  validates :slug, uniqueness: true, presence: true
  validates :user_id, presence: true

# callbacks:
  before_validation :set_slug_if_not_yet

# methods:
  def to_param
    slug.parameterize
  end
  def set_slug_if_not_yet
    self.slug = self.title.parameterize if read_attribute(:slug).blank?
  end

end
