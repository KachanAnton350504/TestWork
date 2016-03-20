Rails.application.routes.draw do

  
    devise_for :users
  resources :orders
  resources :books
  resources :part_of_catalogs
  resources :catalogs
  resources :authors
  
  get 'orders/index'


  root 'static_pages#home', as: 'home_page'

  post '/books/order_book', to: 'books#order_book', as: 'order_book'
  
  get '/books/buy_book/:id/buy_book', to: 'books#buy_book', as: 'buy_book'

  get '/orders/show', to: 'orders#show', as: 'orders_list'
  get '/orders/information/:id', to: 'orders#information', as: 'descry_order'
  get '/orders/accept/:id/:acceptance', to: 'orders#accept', as: 'accept_order' 

  

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  

  post "markdown/preview"
  get 'markdown/preview'
  
  #Redactor and Image
  mount Rich::Engine => '/rich', :as => 'rich'
  #API
  mount GrapeSwaggerRails::Engine => '/api', as: 'swagger'
  mount API => '/'
  
 end
