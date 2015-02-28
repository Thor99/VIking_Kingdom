class HomeController < ApplicationController
	def index
		@vikings = Viking.all.page(params[:page]).per(4)
	end
end