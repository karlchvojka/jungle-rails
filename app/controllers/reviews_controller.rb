class ReviewsController < ApplicationController

  def create
    @product = Product.find params[:product_id]
    @review = @product.reviews.new review_params
    @review.user_id = current_user

    if @review.save
      redirect_to @product, notice: "Review created"
    else
      redirect_to @product, notice: "Review not created error."
    end
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
