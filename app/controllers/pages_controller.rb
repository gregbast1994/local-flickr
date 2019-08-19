require 'flickraw'

class PagesController < ApplicationController
  def home
    begin
      @results = helpers.search(params[:s]) if params[:s]
      rescue => e
    end
  end
end
