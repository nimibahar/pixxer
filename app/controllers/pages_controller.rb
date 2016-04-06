class PagesController < ApplicationController
  def home
    @events = Event.all
  end

  def privacy


  end
end
