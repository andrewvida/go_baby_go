class FirstsController < ApplicationController
  def index
    @kid = Kid.find_by_id(params[:kid_id])
    @firsts = First.where("kid_id = ?", @kid.id)
  end

  def new
    @first = First.new
    @kid = Kid.find_by_id(params[:kid_id])
  end

  def create
    @first = First.new(firsts_params)
    @first.update_attributes(kid_id: params[:kid_id])

    if @first.save
      flash[:success] = "Baby....created!"
      redirect_to @first
    else
      redirect_to 'new'
    end
  end

  def show
    @first = First.find(params[:id])
  end

  private

  def firsts_params
    params.require(:first).permit(:occurred_at,
      :description)
  end


end
