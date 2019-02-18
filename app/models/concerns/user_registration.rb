module UserRegistration
  extend ActiveSupport::Concern

  included do
    validates :email,
            presence: true,
            confirmation: true
    validates :password,
              confirmation: true,
              length: { minimum: 8 }
    validates :terms, acceptance: true

    attr_accessor :password

    before_save :hash_password
    after_commit :send_welcome_email, on: :create
  end

  private
  # ...
end