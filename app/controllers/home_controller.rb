class HomeController < ApplicationController
  # skip_filter :authenticate_user!, :only => [ :dashboard]
  
  def dashboard
    if current_user.has_role?(:admin)
      redirect_to new_employee_url
    end
    
    if current_user.has_role?(:loan_creator)
      redirect_to search_client_url
    end

    
  end
  
end
