class Admin::ItemsController < ApplicationController
  
  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new
  end
  
  def index
    @items = Item.all
  end
  
  def show
    @item = Item.find(params_id)
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  
  private
  
  def item_params
    require.(:items).parmit(:item_name,:item_text,:item_amount,:item_image,:item_price,:is_active)
  end
  
end