class User::AsSignUp < ActiveType::Record[BaseUser]
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

  def self.model_name
    ActiveModel::Name.new(self, nil, "UserSignUp")
  end
  
  private
  def hash_password
    puts "---- theoretically hashing password"
    self.password_digest = password
  end

  def send_welcome_email
    puts "----- sending email"
  end
end