class ReviewsController < ApplicationController
  def new
    @film = Film.find(params[:film_id])
  end

  def create
    @film = Film.find(params[:film_id])
    @review = @film.reviews.create(review_params)
    redirect_to film_path(@film)
  end

  def show
  end

  def list

  end

  def review_params
    params.require(:review).permit(:review)
  end
end
