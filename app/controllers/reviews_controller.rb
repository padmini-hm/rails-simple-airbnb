class ReviewsController < ApplicationController
 def new
  @flat = Flat.find(params[:flat_id])
  @review = Review.new
 end

 def create
  @flat = Flat.find(params[:flat_id])
  @review = Review.new(review_params)
  @review.flat = @flat

  if @review.save
    redirect_to flat_path(@flat)
  else
    render :new
  end
 end

 def destroy
  @review = Review.find(params[:id])
  @review.destroy
    redirect_to flat_path(@review.flat), notice: 'review was successfully destroyed.'
 end


 private
 def review_params
  params.require(:review).permit(:content)
 end

end
