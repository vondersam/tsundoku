class WishlistsController < ApplicationController
  before_action :set_wishlist

  def show
  end

  private

  def set_wishlist
    @wishlist = Wishlist.find(params[:id])
  end

end
