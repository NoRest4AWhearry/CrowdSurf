class StatesController < ApplicationController
	def new
		@state = State.new
	end

	def create
		@state = State.new(state_params)
		@state.save
	end

	def edit
		@state = State.find(params[:id])
	end

	def update
		@state = State.find(params[:id])
		@state.update_attributes(state_params)
	end

	def destroy
		@state = State.find(params[:id]).destroy
	end

	private

	def state_params
		params.require(:state).permit(:name)
	end
end
