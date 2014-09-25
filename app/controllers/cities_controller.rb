class CitiesController < ApplicationController
	before_filter admin

	def new
		@city = City.new
	end

	def create
		@city = City.new(city_params)
		@city.save
	end

	def edit
		@city = City.find(params[:id])
	end

	def update
		@city = City.find(params[:id])
		@city.update_attributes(city_params)
	end

	def destroy
		@city = City.find(params[:id]).destroy
	end

	private

	def city_params
		params.require(:city).permit(:name, :state_id)
	end
end
