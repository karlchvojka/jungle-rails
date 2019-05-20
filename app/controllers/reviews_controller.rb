class ReviewsController < ApplicationController
  def destroy
    @review.find(params[:id]).destroy
    flash[:success] = "Success"
    redirect_to @product.url
  end

  before_filter :authenticate

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

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
