# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Debita46::Application.initialize!

SUPERUSER = "SuperUser"

ADMIN_SECTION = {
  :all_employees => "all_employees",
  :create_employee => "create_employee",
  :edit_employee => "edit_employee"        
}


LOAN_CREATOR_SECTION = {
  :create_loan => "create_loan",
  :create_client => "create_client",
  :all_clients => "all_clients",
  :all_loans => "all_loans"
}

DEBT_COLLECTOR_SECTION = {
  :create_payment => "create_loan"
}




###############################################
#######
#######      Breadcrumb Constant
#######
###############################################

USER_NAV = {
  :list_employees => "list_employees",
  :edit_employee => "edit_employee"     
}

CREATE_PAYMENT_NAV = {
  :search_client => "search_client",
  :select_loan => "select_loan", 
  :create_payment => "create_payment"   
}






###############################################
#######
#######      Other Constants
#######
###############################################

ROLE_SYMBOL = {
  :admin => 1,
  :loan_creator => 2, 
  :debt_collector => 3, 
  :cashier => 4 
}


###############################################
#######
#######      Process List
#######
###############################################




