class ReviewsController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    @review = Review.new(review_params)
    @review.item = @item

    respond_to do |format|
      if @review.save
        format.html { redirect_to item_path(@item) }
        format.json
      else
        format.html { render "items/show", status: :unprocessable_entity }
        format.json
      end
    end
  end

  def destroy
    @review = Review.find(params[:item_id])
    @item = @review.item
    @review.destroy
    redirect_to item_path(@item)
  end

  #def destroy
    #@review = Review.find(params[:restaurant_id])
    #@restaurant = @review.restaurant
    #@review.destroy
   # redirect_to restaurant_path(@restaurant)
  #end


  private

  def review_params
    params.require(:review).permit(:content)
  end
end
