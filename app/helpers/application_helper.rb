module ApplicationHelper
  ACTIVE = 'active'
  
  
  #######################################################
  #####
  #####     For the process-navigation active state
  #####
  #######################################################
  
  def get_active_state( section , params )
    
     if section == ADMIN_SECTION[:create_employee]  
        if selected_create_employee_tab?(params)
          return ACTIVE
        end
      end
      
      
    if section == ADMIN_SECTION[:all_employees] or section == ADMIN_SECTION[:edit_employee]
      if   selected_all_employees_tab?(params) or 
          selected_edit_employee_tab?(params)
        return ACTIVE
      end
    end
    
    if section == LOAN_CREATOR_SECTION[:create_loan]  
      if   selected_search_client_for_loan_tab?(params) or 
          selected_create_loan_tab?(params)
        return ACTIVE
      end
    end
    
    if section == LOAN_CREATOR_SECTION[:create_client]  
      if   selected_create_client_tab?(params) 
        return ACTIVE
      end
    end
    
    
  end
  
  
  
  
  protected
  
  #######################################################
  #####
  #####     For the process-navigation active state
  #####       , protected method to check the selected tab
  #####
  #######################################################
  
  
  #######################################################
  ##### =>  For ADMIN_SECTION 
  #######################################################
  
  def selected_create_employee_tab?(params)
     if params[:controller] == "users" && params[:action] == "new_employee"
       return true
     end

     return false
   end
  
  
  def selected_all_employees_tab?(params)
    if params[:controller] == "users" && params[:action] == "all_employees" 
      return true
    end

    return false
    
  end
  
  def selected_edit_employee_tab?(params)
    if  params[:controller] == "users" && params[:action] == "edit_employee"  
      return true
    end

    return false
  end
  
  
  
  #######################################################
  ##### =>  For LOAN_CREATOR_SECTION 
  #######################################################
  
  
  def selected_search_client_for_loan_tab?(params)
    if  params[:controller] == "loans" && params[:action] == "search_client"  
      return true
    end

    return false
  end
  
  def selected_create_loan_tab?(params)
    if  params[:controller] == "loans" && params[:action] == "new"  
      return true
    end

    return false
  end
  
  def  selected_create_client_tab?(params) 
    if  params[:controller] == "clients" && params[:action] == "new"  
      return true
    end

    return false
  end
  
  
  
  
  
end
