class ShoppingListItemsController < ApplicationController

  def index
  end

  def show

    @shopping_trip = ShoppingTrip.find(params[:id])
    @shopping_list = @shopping_trip.shopping_lists.where(user: current_user)
    if @shopping_list.first
      @all_items = @shopping_list.first.shopping_list_items
    else
      @all_items = []
    end


    if @shopping_trip.shopping_lists.where(user: current_user).size > 0
      @shopping_list = @shopping_trip.shopping_lists.where(user: current_user).first
    else
      @shopping_list = ShoppingList.new
      @shopping_list.user = current_user
      @shopping_list.shopping_trip = @shopping_trip
      @shopping_list.save
    end

    @shopping_list_items  = ShoppingListItem.new
  end

  def new
  end

  def create
    @shopping_list = ShoppingList.find(params[:shopping_list_id])
    params[:shopping_list_item]["item_ids"].each do |item_id|
      if !item_id.empty?
        if !Item.where(id: item_id.to_i).empty?
          item = Item.where(id: item_id.to_i).first
          # raie
        else
          item = Item.new(name: item_id)
          item.save
        end
        shopping_list_item = ShoppingListItem.new
        shopping_list_item.name = item.name
        shopping_list_item.shopping_list = @shopping_list
        shopping_list_item.save
      end
    end
    redirect_to shopping_list_item_path(@shopping_list.shopping_trip)
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
