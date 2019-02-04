class UserSignUpsController < ApplicationController
  def new
    @user = User::AsSignUp.new

    render "users/new"
  end

  def create
    @user = User::AsSignUp.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to "/users/", notice: 'User was successfully created.' }
        format.json { render "users/show", status: :created, location: @user }
      else
        format.html { render "users/new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user_sign_up).permit(:email, :password, :terms, :password_confirmation, :email_confirmation)
    end
end
