require 'reform/form/dry'
require "reform/form/coercion"

module Types
  include Dry::Types.module
end


module Registration::Contract
  class Create < Reform::Form
    include Dry
    include Reform::Form::ActiveModel
    feature Coercion

    model :tb_registration

    property :email
    property :email_confirmation, virtual: true
    property :password, virtual: true
    property :password_confirmation, virtual: true
    property :terms, virtual: true, type: Types::Params::Bool

    validation do
      required(:email).filled.confirmation
      required(:password).value(min_size?: 8).confirmation
      required(:terms).value(:true?)
    end
  end
end
