class UsersController < ApplicationController
  def index
    @users = User.all()
  end

  def new
  end

  def show
    uID = params["userID"].upcase
    @user = User.find_by userID: uID
    if !!(@user)
      render :show
    else
      render :new
    end
  end
end
