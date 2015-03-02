class HomesController < ApplicationController

  def index
    response = HTTP.get '/api/today_vachana'
  end

end
