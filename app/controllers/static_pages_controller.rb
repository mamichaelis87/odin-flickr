class StaticPagesController < ApplicationController
  def index
    unless params.empty?
      @photos = flickr.galleries.getPhotos("198899590@N03")
    end
  end
end
