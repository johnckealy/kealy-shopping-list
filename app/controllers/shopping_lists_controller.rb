class ShoppingListsController < ApplicationController

  def index
  end

  def show
    current_user.shopping_lists.each do |shopping_list|
      if params[:id].to_i == shopping_list.shopping_trip.id
        @shopping_list = shopping_list
      end
    end
    unless @shopping_list
      @shopping_list = create
    end
    redirect_to shopping_list_item_path(@shopping_list)
  end

  def create
    @shopping_list = ShoppingList.new
    @shopping_list.user = current_user
    @shopping_list.shopping_trip_id = params[:id]
    if @shopping_list.save
      @shopping_list
    else
      raise
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
