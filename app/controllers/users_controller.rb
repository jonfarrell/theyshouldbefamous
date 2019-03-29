class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_videos = @user.videos
  end

  def set_my_user
    @current_user = current_user.users.find(params[:id])
  end

  def index
    @users = User.all
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :birthday, :about, :email, :password, :current_password, :remember_me, :avatar, :cover_photo)
    end

end
