require 'will_paginate/array'
class HomesController < ApplicationController

  def index
    response = HTTP.get('/api/list_vachanakaara')
    puts response
    @t_list=response
    @today_lister=JSON.parse(response.body)
    #@today_lister=@today_lister.paginate(:page => params[:page], :per_page => 3)
   
  end
  def show
    id1=params[:id]
    response= HTTP.get('/api/find_poem/'+ id1)
    @poem=JSON.parse(response.body)
  end
  def info
    id1=params[:id]
    puts "Passing ID"
    puts id1
  	response2= HTTP.get('/api/poet_info/'+ id1)
  	puts "this is from new_release"
  	puts response2
    @v=response2
  	@info=JSON.parse(response2.body)
    respond_to do |format| 
      format.js
    end
  end
  def search
    @name=params[:search]
    puts @name
    response = HTTP.get('/api/search_poet/'+ @name)
    puts "This is the response"
    puts response
    @today_lister=JSON.parse(response.body)
     # @today_lister=@today_lister.paginate(:page => params[:page], :per_page => 3)
    puts @today_lister
  end
end
