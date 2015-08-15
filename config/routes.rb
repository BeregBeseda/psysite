Psysite::Application.routes.draw do


  match '/cases', to: 'menus#index', via: 'get'  
  match '/cases/:id', to: 'menus#show', via: 'get'  
  
  match '/arts', to: 'posts#index', via: 'get'  
  match '/arts/:id', to: 'posts#show', via: 'get'    
  match '/abouts', to: 'bios#show', via: 'get'  
  
  match '/to_pay/:sum', to: 'pays#to_pay', via: 'get'    
  match '/success_pay', to: 'pays#success', via: 'get'      
  match '/pending_pay', to: 'pays#pending', via: 'get'        
  match '/fail_pay', to: 'pays#fail', via: 'get'      


  #resources :bios, :books, :consults, :films, :menus, :posts, :reviews, :users
  resources :orders, :users
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  resources :posts do
    resources :post_comments
  end

  resources :books do
    resources :book_comments
    resources :book_orders    
  end

  resources :consults do
    resources :consult_orders    
  end

  resources :films do
    resources :film_comments
    resources :film_orders    
  end

  # You can have the root of your site routed with "root"
  root 'menus#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
