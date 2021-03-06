Rails.application.routes.draw do

  root 'customers#new'

  # resources :order_details, only: [:index, :show, :edit, :update, :destroy]
  resources :products, only: [:index]
  resources :customers

  resources :orders do
    resources :order_details
  end

  post '/add_product/:product_id', to: 'order_details#add', as: 'add_product'
  post '/inc_product/:order_detail_id', to: 'order_details#inc', as: 'inc_product'
  post '/dec_product/:order_detail_id', to: 'order_details#dec', as: 'dec_product'

  patch '/orders/:id/done', to: 'orders#done', as: 'order_done'


  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'


  # resources :customers, only: [:new, :create]



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
