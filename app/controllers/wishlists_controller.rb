class WishlistsController < ApplicationController
  before_action :set_wishlist

  def show
    @user = current_user
  end

  private

  def set_wishlist
    @wishlist = current_user.wishlist
  end

end
