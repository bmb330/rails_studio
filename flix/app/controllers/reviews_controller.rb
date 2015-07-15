class ReviewsController < ApplicationController
	before_action :set_movie

	def index
		@reviews = @movie.reviews
	end

	def new
		@review = @movie.reviews.new
	end

	def create
		@review = @movie.reviews.new(reviews_params)
		if @review.save
			redirect_to movie_reviews_path(@movie), notice: "Thanks for your review!"
		else
			render :new
		end
	end

	def destroy
		@review = Review.find(params[:id])
		@review.destroy
		redirect_to movie_reviews_url, alert: "Movie review successfully deleted!"
	end

	def edit
		@review = Review.find(params[:id])
	end

	def update
	end

	private
		def reviews_params
			params.require(:review).permit(:name, :comment, :stars)
		end

		def set_movie
			@movie = Movie.find(params[:movie_id])
		end
end
