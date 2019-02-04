class Registration
  include ActiveModel::Model

  validates :email,
            presence: true,
            confirmation: true
  validates :password,
            confirmation: true,
            length: { minimum: 8 }
  validates :terms, acceptance: true

  attr_accessor :email, :password

  def save
    if valid?
      user = BaseUser.new(
        email: email,
        password_digest: password
      )
      user.save!
      send_welcome_email
      true
    else
      false
    end
  end

  private
  def hash_password
    puts "---- theoretically hashing password"
    password
  end

  def send_welcome_email
    puts "----- sending email"
  end
end