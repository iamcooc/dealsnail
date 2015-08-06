class CalculatorsController < ApplicationController
	def new
		@calculator = Calculator.new
	end
	
	def create
		@calculator = Calculator.new(calculator_params)
		if @calculator.save
			render :show
		end	

	end	

	def show
		@calculator = Calculator.find(params[:id])
	end	


	private
		def calculator_params
			params.require(:calculator).permit(:origin, :destination, :weight, :length, :width, :height)
		end	
end
