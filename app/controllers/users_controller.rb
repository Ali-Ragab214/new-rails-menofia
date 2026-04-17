class UsersController < ApplicationController
before_action:set_user,only %[show edit update destroy]




  def set_user
    @user=User.find(params[:id])
  end

  private
  def user_params
    params.require("user").permit(:name, :email, :dob, :phone)
  end
end
