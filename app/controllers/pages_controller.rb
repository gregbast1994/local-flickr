require 'flickraw'

class PagesController < ApplicationController
  def home
    @user = flickr.people.findByEmail(find_email: params[:s]) if params[:s]
  end
end
