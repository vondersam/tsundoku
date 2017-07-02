class WishlistItemsController < ApplicationController
  def create
    new_wishlist_item = WishlistItem.new
    new_wishlist_item.physical_book_id = params[:physical_book_id]
    new_wishlist_item.wishlist_id = params[:wishlist_id]
    new_wishlist_item.save!
    redirect_to :back
  end

  def destroy
    WishlistItem.destroy(params[:id])
    redirect_to :back
  end

  private
  def wishlist_item_params
    params.require(:wishlist_item).permit(:physical_book_id, :wishlist_id)
  end
end
