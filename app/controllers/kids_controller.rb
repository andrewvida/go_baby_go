class KidsController < ApplicationController
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

  private

  def kids_params
    params.require(:kid).permit(:name)
  end

end
