class HomeController < ApplicationController
	def index
		@search = params[:q]
		vikings_searched = Viking.search(@search)
		@vikings_searched = vikings_searched.all.order('created_at DESC').page(params[:page]).per(4)

		@vikings = Viking.all.order('created_at DESC').page(params[:page]).per(4)
	end
end