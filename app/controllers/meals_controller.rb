class MealsController < ApplicationController
	def index
		@meals = Meal.all
	end

	def new
		@meals = Meal.new
	end

	def create
		Meal.create(meal_params)
		redirect_to root_path
	end

	private

	def meal_params
		params.require(:meal).permit(:name, :ingredients, :instructions)
	end
end
