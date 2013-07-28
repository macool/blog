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
  validates :content_type, presence: true, :inclusion => {:in => ["markdown", "html"]}

# callbacks:
  before_validation :set_slug_if_not_yet

# methods:
  def to_param
    slug.parameterize
  end
  def set_slug_if_not_yet
    self.slug = self.title.parameterize if read_attribute(:slug).blank? and not read_attribute(:title).blank?
  end
  def content
    @parsed_content ||= if read_attribute(:content_type) == "markdown"
      Maruku.new(read_attribute(:content)).to_html
    else
      read_attribute :content
    end
  end
  def raw_content
    read_attribute :content
  end

end
