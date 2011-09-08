class ChannelItemsController < ApplicationController

  def index
    @items = Item.search(params[:search])
    #redirect_to :action=>'search'
  end

  def search

  end

end
