class ContactMessage
  include ActiveModel::Model
  include ActiveModel::Validations

  alias :read_attribute_for_serialization :send
  attr_accessor :name, :email, :message

  validates_presence_of :name, :message
  validates :email, presence: true, email: true
  validates :message, presence: true, length: { maximum: Rails.application.secrets.max_message_length }

  def save
    valid? && client.update_user(self) && client.post_message(self)
  end

  private
end
