class AdminController < ApplicationController
  def index
    @user = User.find_by(id: session[:user_id])
    @profile = Profile.find_by(user_id: session[:user_id])
    @todo = Todo.find_by(user_id: session[:user_id])
    @daily = Daily.find_by(user_id: session[:user_id])
    @todoListItems = @todo.todo_list_items
  end
end
