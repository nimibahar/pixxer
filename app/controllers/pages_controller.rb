class PagesController < ApplicationController
  def home
    @events = Event.all
    @tables = Table.select{|table| table.payment_status == "Hosted"}
  end

  def privacy


  end
end
