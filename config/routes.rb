Debita46::Application.routes.draw do
  devise_for :clients

  devise_for :users, :controllers => {:registrations => "registrations"}
  
  resources :users 
  resources :loans
  resources :clients 
  
  match 'create_new_employee' => "users#create_employee", :as => :create_new_employee, :method => :post
  match 'new_employee'        => "users#new_employee", :as => :new_employee
  match 'all_employees'       => "users#all_employees", :as => :all_employees
  match 'edit_employee/:username'       => "users#edit_employee", :as => :edit_employee
  match 'update_employee/:username'       => "users#update_employee", :as => :update_employee, :method => :post

  match 'create_new_client' => "clients#create", :as => :create_new_client, :method => :post
  match 'search_client' => "loans#search_client", :as => :search_client
  match 'execute_search_client' => "clients#execute_search", :as => :execute_search_client, :method => :post
  
  
  # match 'new_employee'        => "users#new_employee", :as => :new_employee
  # match 'all_employees'       => "users#all_employees", :as => :all_employees
  # match 'edit_employee/:username'       => "users#edit_employee", :as => :edit_employee
  # match 'update_employee/:username'       => "users#update_employee", :as => :update_employee, :method => :post
  # 

  match 'dashboard'           => 'home#dashboard'  , :as => :dashboard
  root :to => 'home#dashboard'
  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
