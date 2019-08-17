require 'flickraw'

class PagesController < ApplicationController
  def home
    if params[:s]
      @photos = flickr.photos.search(tags: params[:s], per_page: 25)
    end
  end
end
