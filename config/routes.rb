Rails.application.routes.draw do

  root to: "home#index"
  devise_for :users

  # devise_scope :admin do 
  #   get "/login" => "devise/sessions#new"
  # end
  # devise_scope :admin do 
  #   get "/logout" => "devise/sessions#destroy"
  # end
  devise_for :admins, controllers: { sessions: "admins/sessions" }
  # as :admin do
  #   get 'signin' => 'devise/sessions#new', :as => :new_admin_session
  #   post 'signin' => 'devise/sessions#create', :as => :admin_session
  #   delete 'signout' => 'devise/sessions#destroy', :as => :destroy_admin_session
  # end
  resources :admins, only: [:show]
  resources :users, only: [:show]
  resources :items do 
    collection { post :import }
  end


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
