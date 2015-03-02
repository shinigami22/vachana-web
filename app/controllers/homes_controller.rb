class HomesController < ApplicationController

  def index
    response = HTTP.get '/api/today_vachana'
    @today_vachana = response
  end

end
