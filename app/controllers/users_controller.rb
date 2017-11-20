class UsersController < ApplicationController
  before_action :authenticate_user!

  #This was throwing an error so I (Sam Burt) jsut commented it out, we probably should have it back in
  after_action :verify_authorized
  after_action :verify_authenticity_token






  def index
    @users = User.all
    authorize User
  end

  def show
    @user = User.find(params[:id])
    #Need to get this authorize to work, Sam Burt commented this out
    authorize @user
    if @user.parent == nil
        #byebug
        session[:user_id] = @user.id
        redirect_to new_parent_path and return
    else
        @parent = @user.parent
    end
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end

  def destroy
    user = User.find(params[:id])
    authorize user
    user.destroy
    redirect_to users_path, :notice => "User deleted."
  end

  private

  def secure_params
    params.require(:user).permit(:role)
  end

end
