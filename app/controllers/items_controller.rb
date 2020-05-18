class ItemsController < ApplicationController
  def index
    @parents = Category.where(ancestry: nil)
    @items = Item.where(purchased_info_id: nil).includes(:images, :purchased_info).order("created_at DESC").limit(3)
  end
  
  def show
  @item = Item.find(params[:id])
  @parents = Category.where(ancestry: nil)
  @prefecture = Prefecture.find(params[:id])
  @categories = Category.find(params[:id])
  
end

def destroy
  @parents = Category.where(ancestry: nil)
  item = Item.find(params[:id])
  item.destroy

end

end
