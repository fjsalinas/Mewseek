Rails.application.routes.draw do

  resources :news
  resources :news
  resources :playlist_users
  get 'friend/index'

  get 'friend/:id' => 'friend#show'




  resources :follows
  get 'usuarios/show'

  get 'usuarios/index'

  resources :playlist_contents
  resources :playlists
  get 'mymusic/show'

  get 'mymusic/index'

  resources :song_users
  get 'searcher/show'

  get 'searcher/index'

  get 'admin/show'

  get 'admin/index'

  resources :genders
  root 'welcome#show'
  get 'welcome/show'

  devise_for :users, :controllers => { :registrations => "users/registrations" }
  devise_scope :user do 
    get 'users/registrations/baneo' => 'users/registrations#baneo', :as => :baneo
    get 'users/registrations/desbaneo' => 'users/registrations#desbaneo', :as => :desbaneo
  end
 
  resources :songs
  resources :albums
  resources :artists


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
