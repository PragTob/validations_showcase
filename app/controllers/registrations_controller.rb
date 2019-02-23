class RegistrationsController < ApplicationController
  def new
    @user = Registration.new

    render "users/new"
  end

  def create
    @user = Registration.new(registration_params)

    if @user.save
      redirect_to "/users/", notice: 'User was successfully created.'
    else
      render "users/new"
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def registration_params
      params.require(:registration).permit(:email, :password, :terms, :password_confirmation, :email_confirmation)
    end
end
