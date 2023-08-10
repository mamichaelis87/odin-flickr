class StaticPagesController < ApplicationController
  def index
    if params[:user_id]
      flickr = Flickr.new("7c0c2bf5faaec563bbd5bd71f10229cd", "afbecd44ee7f6c23")
      @photos = flickr.photos.search(api_key: "7c0c2bf5faaec563bbd5bd71f10229cd", user_id: params[:user_id])
    else
      @photos = []
    end
  end
end
