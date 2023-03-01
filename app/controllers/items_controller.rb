class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :destroy]
    def index
      @items = Item.all
    end
    def show
    end
    def new
      @item = Item.new
    end
    def create
      @item = Item.new(item_params)
      # @item.user_id = nil
      @item.user = current_user
      if @item.save!
        redirect_to item_path(@item)
      else
        render :new
      end
    end
    def destroy
      @item.destroy
      redirect_to items_path, status: :see_other
    end
    def search
      @items = Item.where("LOWER(title) LIKE ?", "%" + params[:q].downcase + "%")
    end
    private
    def item_params
      params.require(:item).permit(:title, :description, :price, :location, :color, :photo)
    end
    def set_item
      @item = Item.find(params[:id])
    end
  end
