class Guest < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

# relations:
  has_many :comments

# validations:
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

# class methods:
  def self.update_with_email( params )
    attributes = ActionController::Parameters.new(params).permit(:name, :email, :website)
    guest = Guest.find_or_initialize_by(email: attributes[:email])
    guest.update_attributes(attributes)
    guest
  end

end
