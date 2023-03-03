class RentingsController < ApplicationController
  def new
    @item = Item.find(params[:item_id])
    @renting = Renting.new
  end

  def create
    @item = Item.find(params[:item_id])
    @renting = Renting.new(renting_params)
    @renting.item = @item
    @renting = @item.user 
    # raise
    if @renting.save
      redirect_to items_path(@item), notice: 'You have one item in your shopping cart'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def renting_params
    params.require(:renting).permit(:pick_up_date, :drop_off_date)
  end
end
