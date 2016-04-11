class PagesController < ApplicationController
  def home
    @events = Event.all
    @tables = Table.all
  end

  def privacy


  end
end
