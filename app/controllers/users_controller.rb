class UsersController < ApplicationController
  def index
    @book = Book.new
    @users = User.order(id: "DESC")
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
  end

  def edit
  end
end
