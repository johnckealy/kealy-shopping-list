class ShoppingListItemsController < ApplicationController

  def index
  end

  def show
    @shopping_list_items  = ShoppingListItem.new
    # @shopping_list_items = current_user.shopping_lists[params[:id].to_i].shopping_list_items
  end

  def new
  end

  def create
    raise
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
