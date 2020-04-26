Rails.application.routes.draw do
  get 'file_uploads/new'
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :products do
   resources :file_uploads, only: [:new, :create, :destroy]
  end
  get '/product/inputs' => 'products#inputs'
  resources :categories
  root :to => 'products#inputs'
  resources :contact, only: :index
  resources :about, only: :index

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
