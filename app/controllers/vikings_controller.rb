class VikingsController < ApplicationController
	
	def show
		@viking = Viking.friendly.find(params[:id])
	end

	def new
		@viking = Viking.new
	end

	def create
		@viking = Viking.new(viking_params)

		if @viking.save
			redirect_to @viking, notice: "HAIL TO THE HAMMER! Your viking was created!"
		else
			render action: :new
		end
	end

	def edit
		@viking = Viking.friendly.find(params[:id])
	end

	def update
		@viking = Viking.friendly.find(params[:id])

		if @viking.update(viking_params)
			redirect_to @viking, notice: "LETS PRAY TO ODIN, YOUR VIKING HAS CHANGED!"
		else
			render action: :edit
		end
	end
	

	def viking_params
		params.require(:viking).permit(:image, :name, :history)
	end
end