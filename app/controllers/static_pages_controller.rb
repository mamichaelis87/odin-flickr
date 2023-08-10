class StaticPagesController < ApplicationController
  def index
    if params[:user_id]
      flickr = Flickr.new(ENV["FLICKR_API_KEY"], ENV["FLICKR_SHARED_SECRET"])
      @photos = flickr.photos.search(user_id: params[:user_id])
    end
  end
end
