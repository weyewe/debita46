class LoansController < ApplicationController
  def new
    @client = Client.find_by_id( params[:client_id])
    
  end
  
  def search_client
  end
end
