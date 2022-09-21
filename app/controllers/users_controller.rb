class UsersController < ApplicationController
  def index
    @users = User.all
  end
 
  def new
    @user = User.new
  end

  def create
    # binding.pry
    @user = User.new(params.require(:user).permit(:title, :start_at, :finish, :alltime, :onememo))
      # binding.pry
      if @user.save
        flash[:notice] = "スケジュールを登録しました"
        redirect_to :users
      # binding.pry
      else
        render "new", status: :unprocessable_entity
      end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
     @user = User.find(params[:id])
     if @user.update(params.require(:user).permit(:title, :start_at, :finish, :alltime, :onememo))
       flash[:notice] = "「ID#{@user.id}」のスケジュールを更新しました"
       redirect_to :users
     else
       render "edit", status: :unprocessable_entity
     end
  end

  def destroy
     @user = User.find(params[:id])
     @user.destroy
     flash[:notice] = "「ID#{@user.id}」のスケジュールを削除しました"
     redirect_to :users
  end
end