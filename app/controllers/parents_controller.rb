class ParentsController < ApplicationController
  def new
    @parent = Parent.new
  end

  def show
    @parent = Parent.find(params[:id])
  end

  def create
    @parent = Parent.new(parent_params)
    if @parent.save
      flash[:success] = "Welcome to the Our App!"
      redirect_to @parent
    else
      render 'new'
    end
  end

  private

  def parent_params
      params.require(:parent).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
