class UsersController < ApplicationController
  before_action :signed_in_user,  only: [:index, :edit, :update, :destroy]
  before_action :correct_user,    only: [:edit, :update]
  before_action :admin_user,      only: :destroy
  before_action :signed_out_user, only: [:new, :create]
  #before_filter :check_for_cancel, :only => [:create, :update, :edit]


  def index
    @users = User.paginate(page: params[:page], per_page: 12)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:notice] = "Welcome to the Golf Statistics Application!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    logger.info "xxx Edit method"
  end

  def update
    logger.info "xxx update method"
    if @user.update_attributes(user_params)
      flash[:notice] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    user = User.find(params[:id])
    unless current_user?(user)
      user.destroy
      flash[:notice] = "User deleted."
    end
    redirect_to users_url
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end

  # Before filters
  def signed_out_user
    redirect_to(root_url, notice: "You are already a User - Please sign in.") unless not signed_in?
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

  #def check_for_cancel
   # if params[:commit] == "Cancel"
    #  redirect_to root_path
    #end
  #end

# <%= link_to "Cancel", root_path, {:class=>"user-settings__input__cancel-btn"} %>


end
