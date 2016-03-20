Rails.application.routes.draw do

  
  mount Rich::Engine => '/rich', :as => 'rich'
  root 'static_pages#home'

  post '/books/order_book', to: 'books#order_book', as: 'order_book'
  get '/books/buy_book/:id', to: 'books#buy_book', as: 'buy_book'
  
  resources :orders
  resources :books
  resources :part_of_catalogs
  resources :catalogs
  
 get '/user/information/:id', to: 'user#information', as: 'descry_order'

  get '/user/accept/:id/:acceptance', to: 'user#accept', as: 'accept_order' 

  get 'markdown/preview'

  resources :authors
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'user/index', as: 'user_root'

  post "markdown/preview"

  mount GrapeSwaggerRails::Engine => '/api', as: 'swagger'
  mount API => '/'
  
 end
