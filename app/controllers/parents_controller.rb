class ParentsController < ApplicationController
  before_action :signed_in_parent, only: [:edit, :update]
  before_action :correct_parent,   only: [:edit, :update]

  def new
    @parent = Parent.new
  end

  def show
    @parent = Parent.find(params[:id])
  end

  def create
    @parent = Parent.new(parent_params)
    if @parent.save
      sign_in @parent
      flash[:success] = "Welcome to the Our App!"
      redirect_to @parent
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @parent.update_attributes(parent_params)
      flash[:success] = "Profile updated"
      sign_in @parent
      redirect_to @parent
    else
      render 'edit'
    end
  end
  end

  private

  def parent_params
    params.require(:parent).permit(:name, :email, :password,
                                   :password_confirmation)
  end

  def signed_in_parent
    unless signed_in?
      store_location
      redirect_to signin_url, notice: "Please sign in."
    end
  end

  def correct_user
    @parent = Parent.find(params[:id])
    redirect_to(root_url) unless current_parent?(@parent)
  end
end
