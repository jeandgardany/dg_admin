Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :products
   get '/product/inputs' => 'products#inputs'
  resources :categories
  root :to => 'products#inputs'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
