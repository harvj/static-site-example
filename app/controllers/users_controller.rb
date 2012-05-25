class UsersController < ApplicationController

  before_filter :authorize

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Thank you for signing up."
    else
      render 'new'
    end
  end

  def change_password
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to root_url, :notice => "Password successfully changed."
    else
      render 'change_password'
    end
  end

end
