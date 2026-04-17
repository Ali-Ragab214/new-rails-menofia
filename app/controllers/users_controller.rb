class UsersController < ApplicationController
before_action:set_user,only %[show edit update destroy]

# GET /users
def index
  @users=User.all
end

def show
end

  def set_user
    @user=User.find(params[:id])
  end

  private
  def user_params
    params.require("user").permit(:name, :email, :dob, :phone)
  end
end
