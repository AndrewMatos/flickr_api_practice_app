class StaticPageController < ApplicationController
	def home
		  
		if params[:f_id] and !params[:f_id].empty?
		 	@flicker_id = params[:f_id]
		 	flicker= FlickRaw::Flickr.new
		 	@photos = flicker.photos.search(user_id: @flicker_id)
		else
		    @flicker_id = nil
		end
	end
end
