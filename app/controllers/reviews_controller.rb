class ReviewsController < ApplicationController
  skip_before_action :authenticate, only: [:destoy]

  def create
    @product = Product.find params[:product_id]
    @review = @product.reviews.new review_params
    @review.user_id = current_user.id

    if @review.save
      redirect_to @product #notice: "Review created"
    else
      redirect_to @product #notice: "There was an error creating the review: #{@review.errors.full_messages}"
    end
  end

  def destroy
    Review.find(params[:id]).destroy
    redirect_to Product.find params[:product_id]
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating, :product_id, :id)
  end
end
