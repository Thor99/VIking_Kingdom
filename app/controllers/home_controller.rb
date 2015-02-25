class HomeController < ApplicationController
	def index
		@vikings = Viking.all
	end
end