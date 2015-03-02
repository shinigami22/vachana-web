require 'rest_client'

module HTTP

  VACHANA_API = Rails.env == 'production' ? "http://vachana.sanchaya.net" : 'http://localhost:3005/'

  def self.get url
    url =  "#{VACHANA_API}/#{url}"
    begin
      response = RestClient.get url
    rescue Exception => e
     "Please check your API URL #{VACHANA_API}"
   end 
 end


end 
