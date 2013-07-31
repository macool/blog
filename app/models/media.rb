class Media < ActiveRecord::Base
  
  mount_uploader :file, MediaFileUploader
  
# validations:
  validates :name, presence: true
  validates :file, presence: true

# callbacks:
  before_validation :set_name_if_blank
  
# methods:
  def set_name_if_blank
    self.name = file.to_s.parameterize if name.blank?
  end
  
end
