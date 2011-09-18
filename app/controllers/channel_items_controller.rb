class ChannelItemsController < ApplicationController

  def search
    
    if params[:search]
      @items = Item.search(params[:search])
    
    elsif params[:search_by_author] || params[:search_by_comments]
     @items = Item.conditional_search(params[:search_by_author],params[:search_by_comments])   
    end
  end

  def index
   @items = Item.display_all
  end


end
