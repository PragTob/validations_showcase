class Registration::Create < Trailblazer::Operation
  step Model(BaseUser, :new)
  step Contract::Build(constant: Registration::Contract::Create)
  step Contract::Validate(key: :tb_registration)
  step :hash_password
  step Contract::Persist()
  step :send_welcome_email

  private
  def hash_password(options, model:, **)
    puts "---- theoretically hashing password"
    model.password_digest = options["result.contract.default"].password
  end

  def send_welcome_email(_options, **)
    puts "----- sending email"
    true
  end
end
