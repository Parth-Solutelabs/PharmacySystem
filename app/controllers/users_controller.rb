class UsersController < ApplicationController
  
  def new
  end
  def show_assistant
    @users = User.all.where(title: 'Assistant')
  end
end
