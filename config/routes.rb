Project::Application.routes.draw do

  get "checkout/index"

  get "checkout/calculate"

  root :to => "Application#index", :via => :get

  get "comic_orders/index"

  get "comic_orders/new"

  get "orders/index"

  get "orders/new"

  get "comics/index"

  get "comics/new"

  match "comics/:id" => "comics#show", :as => "comic_page", :via => :get
  match "comics/search/:publisher" => "comics#search_publisher", :as => "search_publisher_page", :via => :get
  match "comics/search/:price" => "comics#search_price", :as => "search_price_page", :via => :get 
  match "comics/search" => "Application#search", :as => "search_comics", :via => :post

  match "cart" => "Application#cart", :via => :get
  match "cart/add" => "comics#add", :as => "add_item"
  match "cart/remove" => "comics#remove", :as => "remove_item"
  match "cart/checkout" => "checkout#index"
  match "cart/checkout/total" => "checkout#calculate", :via => :post

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)



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
  # match ':controller(/:action(/:id))(.:format)'
end
