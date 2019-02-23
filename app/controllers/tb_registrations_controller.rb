class TbRegistrationsController < ApplicationController
  def new
    @user = Registration::New.(params: {})["contract.default"]

    render "users/new"
  end

  def create
    result = Registration::Create.(params: params.to_unsafe_h)

    if result.success?
      redirect_to "/users/", notice: 'User was successfully created.'
    else
      @user = result["contract.default"]
      render "users/new"
    end
  end
end
