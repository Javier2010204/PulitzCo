class HomeController < ApplicationController
  
  def index
  	@contact = Contact.new
  	@contacts = Contact.all.nuevos.paginate(page:params[:page],per_page:5)
  end

  def unregistered
  	
  end

  protected
  	def set_layout
  		return "landing" if action_name == "unregistered"
  		super
  	end
end
