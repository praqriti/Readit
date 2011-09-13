class ChannelItemsController < ApplicationController

  def search
    @items = Item.search(params[:search])

    if params[:search].blank?
      redirect_to :action => 'index'
    end
  end

  def index
  @items = Item.display_all
  end


end
