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
    guest = Guest.where(email: attributes[:email]).first_or_initialize
    guest.update_attributes(attributes)
    guest
  end

end
