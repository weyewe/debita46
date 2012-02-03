class ClientsController < ApplicationController
  def new
  end
  
  def create
  end
  
  
  def search
  end
  
  def execute_search
    @search_term = params[:search]
    @client = Client.find_by_username( @search_term )
    
    if @client.nil?
      flash[:error] = "Danger"
      redirect_to search_client_url 
      return
    else
      redirect_to show_client_url
    end
  end
  
end
