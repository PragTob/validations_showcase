class Registration::New < Trailblazer::Operation
  step Model(BaseUser, :new)
  step Contract::Build(constant: Registration::Contract::Create)
end
