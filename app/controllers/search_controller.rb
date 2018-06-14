class SearchController < ApplicationController

	def new

	end 

	def create
		palabra = "%#{params[:keyword]}%"

		@contacts = Contact.where("name LIKE ? OR job LIKE ?", palabra, palabra)
		
		respond_to do |format|
			format.html{redirect_to root_path}
			format.json{render json: @contacts}
			format.js
		end
	end
end