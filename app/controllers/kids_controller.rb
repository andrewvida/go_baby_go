class KidsController < ApplicationController
  def index
    @kids = Kid.where("parent_id = ?", params["parent_id"])
  end

  def new
    @kid = Kid.new
  end

  def create
    @kid = Kid.new(kids_params)
    @kid.update_attributes(parent: current_parent)
    if @kid.save
      flash[:success] = "Baby....created!"
      redirect_to @kid
    else
      redirect_to 'new'
    end
  end

  def show
    @kid = Kid.find(params[:id])
  end

  private

  def kids_params
    params.require(:kid).permit(:name,
      :birthdate, :birthplace, :weight, :height)
  end

end
