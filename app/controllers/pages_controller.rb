require 'flickraw'

class PagesController < ApplicationController
  def home
    if params[:s]
      @results = helpers.search(params[:s])
    end
  end
end
