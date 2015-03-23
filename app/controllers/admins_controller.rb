class AdminsController < ApplicationController 

  def show 
    @admin = Admin.find(params[:id])

    @users = User.all
  end 
end