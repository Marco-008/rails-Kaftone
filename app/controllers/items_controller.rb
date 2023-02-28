class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def search
    @items = Item.where("LOWER(title) LIKE ?", "%" + params[:q].downcase + "%")
  end

end
